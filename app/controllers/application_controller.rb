class ApplicationController < ActionController::Base


    before_action :only_signed_in

    add_flash_types :success, :danger

    private

    def only_signed_in
        if !session[:auth ]|| !session[:auth]['id']
            redirect_to new_user_path, danger:"You don't have the right to access to this page please Log in"
        end 
    end
    

end
