class MikomisController < ApplicationController
  before_action :set_mikomi, only: %i[destroy update edit]
  PER_PAGE = 10
  def index
    @q = Mikomi.ransack(params[:q])
    @mikomis = @q.result.page(params[:page]).per(PER_PAGE)
  end

  def new
    @mikomi = Mikomi.new
  end

  def create
    @mikomi = Mikomi.new(mikomi_params)
    @mikomi.user_id = current_user.id
    if @mikomi.save
      redirect_to mikomis_path
    else
      flash.now[:alert] = "投稿に失敗しました"
      render :new
    end
  end

  def destroy
    @mikomi.destroy!
    redirect_to action: "index"
  end

  def edit
  end

  def update
    if @mikomi.update(mikomi_params)
      redirect_to action: "index"
    else
      flash.now[:alert] = "更新に失敗しました"
      render :edit
    end
  end

  private
  def mikomi_params
    params.require(:mikomi).permit(:shohin, :kansan, :name, :constract_date)
  end

  def set_mikomi
    @mikomi = current_user.mikomis.find(params[:id])
  end
end
