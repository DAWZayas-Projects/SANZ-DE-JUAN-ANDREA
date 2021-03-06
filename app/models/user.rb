class User < ActiveRecord::Base
  has_secure_password

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def user_params
    params.require(:user).permit(:login, :password, :password_confirmation)
  end

end
