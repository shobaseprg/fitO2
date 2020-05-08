class EntrancesController < ApplicationController

  def index
    if current_user.on_off == "0"
      current_user.on_off = "1"
      current_user.save!
      binding.pry
    else
      current_user.on_off = "0"
      current_user.save!
      binding.pry
    end
  end

end
