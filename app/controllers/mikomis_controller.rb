class MikomisController < ApplicationController
  def index
    @mikomis = Mikomi.all
  end

  def new
    @mikomi = Mikomi.new
  end

  def create
    current_user.mikomis.create!(mikomi_params)
  end

  private
  def mikomi_params
    params.require(:mikomi).permit(:shohin, :kansan)
  end
end
