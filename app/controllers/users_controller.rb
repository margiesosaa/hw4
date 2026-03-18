class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user["username"] = params["username"]
    @user["email"] = params["email"]
    
    puts "PASSWORD VALUE: #{params[:password].inspect}"
    @user.password = params[:password]

    if @user.save
      redirect_to "/login"
    else
      raise @user.errors.full_messages.inspect
    end
  end
end
