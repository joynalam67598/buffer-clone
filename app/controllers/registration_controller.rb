class RegistrationController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # @user = User.new(params[:user]) #not sequre
    @user = User.new(user_parems)
    if @user.save
      redirect_to root_path, notice: "You logged in successfully!"
    else
      render :new #new.html.erb
      flash.now[:alert] = "Something is wrong!"
    end
  end

  private

  def user_parems
    params.require(:user).permit(:email, :password, :password_confirmation)
    #only we allow you to set!
  end
end
