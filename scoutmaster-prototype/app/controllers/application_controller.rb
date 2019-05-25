class ApplicationController < ActionController::Base

    def after_sign_in_path_for(user)
        new_user_profile_path(user)
    end

end
