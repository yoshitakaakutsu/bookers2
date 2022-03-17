class UsersController < ApplicationController

  def show
    @user = current_user
    @users = User.find(params[:id])
    @book = Book.new
    @books = Book.all
  end

  def edit
    @user = User.find(params[:id])
      if @user == current_user
        render "edit"
      else
        redirect_to user_path(@user.id)
      end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You have updated user succeccfully."
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end

  def index
    @user = current_user
    @users = User.all
    @book = Book.new
    @books = Book.all
  end

  def destroy
  end


  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

  def corrent_user
    @user = User.find(params[:id])
    redirect_to(users_path) unless @user == current_user
  end
end
