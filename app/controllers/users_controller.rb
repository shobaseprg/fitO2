class UsersController < ApplicationController

  def swich
    if current_user.on_off == 0
      current_user.on_off = 1
      current_user.save
    else
      current_user.on_off = 0
      current_user.save
    end

    redirect_to root_path
  end
  
end
