class MikomisController < ApplicationController
  before_action :set_mikomi, only: %i[destroy update edit]
  def index
    @mikomis = Mikomi.all
  end

  def new
    @mikomi = Mikomi.new
  end

  def create
    current_user.mikomis.create!(mikomi_params)
  end

  def destroy
    @mikomi.destroy!
    redirect_to root_path
  end

  def edit
  end

  def update
    @mikomi.update(mikomi_params)
    redirect_to root_path
  end

  private
  def mikomi_params
    params.require(:mikomi).permit(:shohin, :kansan, :name, :constract_date)
  end

  def set_mikomi
    @mikomi = current_user.mikomis.find(params[:id])
  end
end
