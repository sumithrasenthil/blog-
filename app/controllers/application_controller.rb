class ApplicationController < ActionController::Base

    helper_method :current_user
    helper_method :logged_in?

    # to track of the current user record
    def current_user
        Creature.find_by_id(session[:user_id])
    end

    def logged_in?
        !current_user.nil?
    end
end
