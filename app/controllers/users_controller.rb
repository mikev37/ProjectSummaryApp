class UsersController < ApplicationController
  def new
    @user = User.new 
  end
  def create
    @user = User.new(users_params)
	if @user == nil
		flash[:error] = 'Account Error'
		redirect_to new_user_path
	else
		@user.save
		flash[:notice] = 'Account Created'
		redirect_to :root
	end
  end
  private
	def users_params
		params.require(:user).permit(:username, :email, :password)
	end
end
