class PasswordsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_password, except: [:index, :new, :create]
  
  # using current_user to also look for current user's passwords and not other users' passwords
  def index
  
    # Use joins to get passwords through the user_passwords join table
    # This will fetch all passwords associated with the current user
    # through the many-to-many relationship
    @passwords = current_user.passwords.includes(:user_passwords)
  end

  def new
    @password = Password.new
  end

  def create
    # .create creates row with join table
    @password = current_user.passwords.create(password_params)
    if @password.persisted?
      redirect_to @password
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @password = current_user.passwords.find(params[:id])
  end
  
  private
  def password_params
    params.require(:password).permit(:url, :username, :password)
  end

  def set_password
    @password = current_user.passwords.find(params[:id])
  end
end