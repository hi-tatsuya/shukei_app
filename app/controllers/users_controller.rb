class UsersController < ApplicationController
  def show
    @mikomis = Mikomi.where(user_id: current_user.id)
  end
end
