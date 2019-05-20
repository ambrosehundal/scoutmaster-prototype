class ProfilesController < ApplicationController
    #before anyone tries to access their profile, authenticate the user
    before_action :authenticate_user!

    def index
        @user = current_user
    end

    def new
        @user = current_user.email
    end
end
