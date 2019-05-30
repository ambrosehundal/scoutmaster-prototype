class ApplicationController < ActionController::Base

    def after_sign_in_path_for(user)
        user_profiles_path(user)   
    end

    def after_sign_up_path_for(user)
        new_user_profiles_path
    end

end
