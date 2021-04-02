class UsersController < ApplicationController

    def new
      if logged_in?
        redirect_to controller: 'welcome', action: 'home'
      end
    end

    def show
      @user = User.find(session[:user_id])
    end

    def create
      @user = User.create(user_params)
      return redirect_to controller: 'users', action: 'new' unless @user.save
      session[:user_id] = @user.id
      redirect_to controller: 'welcome', action: 'home'
    end

    def edit
    end

    def update
      if @user.update(user_params)
        redirect_to root_path
      else
        render :edit
      end
    end

    def destroy
      @user.delete
      redirect_to root_path
    end

    private

    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation)
    end

end
