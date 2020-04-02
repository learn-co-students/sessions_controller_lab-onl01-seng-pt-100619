class SessionsController < ApplicationController

    def create
        if !params[:name]
            redirect_to login_path
        elsif params[:name] == ""
            redirect_to login_path
        else
            session[:name] = params[:name]
            redirect_to '/'
        end
    end

    def destroy
        if !session[:name]
            session[:name]
        else
            session.delete :name
        end
    end

end