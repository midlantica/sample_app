class UsersController < ApplicationController
before_filter :authenticate, :only => [:index, :edit, :update]

	def index 
		@title = "All users"
		@users = User.all
		# @users = User.paginate(:page => params[:page])
	end

	def show
		@user = User.find(params[:id])
		@title = @user.name
	end

	def new
		@user = User.new
		@title = "Sign Up"
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			sign_in @user
			flash[:success] = "Welcome to the Sample App! Sheehaw!"
			redirect_to @user
		else
			@title = "Sign Up"
			render 'new'
		end
	end


	# def edit
	# 	@user = User.find(params[:id])
	# 	@title = "Edit user"
	# end


end
