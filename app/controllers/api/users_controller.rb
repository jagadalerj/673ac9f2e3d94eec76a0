class Api::UsersController < ApplicationController
	# before_action :skip_auth_token
	def index 
		@users = User.all#.paginate(:page => "3")
		render json: {users: @users}
	end


	def show
		@user = User.find(params[:id])
		render json: {user: @user}
	end

	def update
		@user = User.find(params[:id])
		if @user.present?
			@user.update(user_params)
			render json: {user: @user}
		else
			render json: {error: "User not found."}
		end
	end

	def create
		@user = User.create(user_params)
		render json: {user: @user}
	end

	def destroy
		@user = User.find(params[:id])
		if @user.present?
			@user.delete
			render json: {success: "User deleted successfully.."}
		else
			render json: {error: "User not found."}		
		end 
	end

	def typeahed
		input = params[:input]
		@result = User.serach_typead(input)
		render json: {message: "Record not found."} if @result.blank?
		render json: {result: @result}
	end

	private

	def user_params
		params.require(:user).permit(:firs_name,:last_name,:email)
	end
end
