class MainController < ApplicationController
  def index

    # flash[:notice] = "logedin successfully"
    flash.now[:notice] = "logedin successfully"
    flash.now[:alert] = "Invalid"
  end
end
