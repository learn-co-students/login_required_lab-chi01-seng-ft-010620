class SessionsController < ApplicationController
    def new
    end

    def create
        if params[:name]
            if params[:name].length > 0
                session[:name] = params[:name]
                return redirect_to controller: 'application', action: 'hello'
            end
        end
        
        redirect_to new_session_path
                
    end

    def destroy
        session[:name] = nil
        redirect_to controller: 'application', action: 'hello'
    end

end