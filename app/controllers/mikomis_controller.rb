class MikomisController < ApplicationController
  def index
    @mikomis = Mikomi.all
  end

  def new
    @mikomi = Mikomi.new
  end

  def create
    Mikomi.create!(shohin: mikomi_params[:shohin], kansan: mikomi_params[:kansan], user_id: current_user.id)
  end

  private
  def mikomi_params
    params.require(:mikomi).permit(:shohin, :kansan)
  end
end
