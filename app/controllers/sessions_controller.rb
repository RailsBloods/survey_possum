class SessionsController < ApplicationController
  def dashboard
  end
  def new
    # user = User.new
    #
    #   if user.authenticate(params[:email])
    #     redirect_to login_path, notice: "You already have an account Login here, please! If you have forgotten the email account you signed up with and or your password, you'll have to wait until we learn how to handle mailers, for us to get back to you on that."
    #   else
    #     user.save
    #       render users/create, notice: "User was successfully created.Thanks for signing up with Survey Possum! When we figure out how to handle mailers in the very near future, we will send you an email containing a link to confirm your email. Have fun making surveys!"
    #   end
  end
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to surveys_path, notice: "You have succesfully logged in!"
    else
      flash.now[:alert] = "Login failed: invalid email or password."
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "You have logged out."
  end
end
