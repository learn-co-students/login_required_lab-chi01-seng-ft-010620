class SessionsController < ApplicationController

    def login

    end

    def new
    end

    def create
        return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
        session[:name] = params[:name]   
    end

    def destroy
        session.delete(:name) if session[:name]
    end



end