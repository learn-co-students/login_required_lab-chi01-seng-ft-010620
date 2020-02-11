class SessionsController < ApplicationController

    def new
    end

    def create
        if params[:name].blank? == false
            session[:name] = params[:name]
        else
            redirect_to new_session_path
        end
    end

    def destroy
        if session[:name] != nil
            session[:name] = nil
        end
    end

end