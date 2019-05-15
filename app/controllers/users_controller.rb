class UsersController < ApplicationController

    skip_before_action :only_signed_in, only: [:new, :create, :confirm]

    def new
        @user = User.new
    end

    def create
        user_params = params.require(:user).permit(:firstname, :last_name,:user_name,:level_english, :mail, :password)
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            UserMailer.confirm(@user).deliver_now
            redirect_to new_user_path, success: 'Your account is created successfully, please check your mails ;)'
            
        else
            redirect_to  new_user_path
        end

    end

end