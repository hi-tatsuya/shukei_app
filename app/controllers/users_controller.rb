class UsersController < ApplicationController
  def show
    @mikomis = current_user.mikomis
  end
end
