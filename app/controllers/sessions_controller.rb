class SessionsController < ApplicationController
    def new
    end

    def create
        require_logged_in
        session[:name] = params[:name]
    end

    def destroy
        session.delete :name
        redirect_to(controller: 'application', action: 'hello')
    end
end