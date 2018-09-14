class UsersController < ApplicationController
  before_action :require_login, only: [:show]

  def new
    @user = User.new
    render :new
  end

  def show
    @user = User.find_by(id: params[:id])

    if @user.session_token != session[:session_token]
      redirect_to bands_url
    else
      render :show
    end
  end

  def create
    @user = User.new(user_params)

    if @user.save
      login!(@user) #TODO
      redirect_to user_url(@user)
    else
      flash[:errors] = @user.errors.full_messages
      render :new
    end
  end


  private

  def user_params
    params.require(:user).permit(:password, :email)
  end
end
