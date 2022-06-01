class SessionsController < ApplicationController

    def new

    end

    def create
        user = User.find_by(username: params[:session][:username])
        if user && user.authenticate(params[:session][:password])
            flash[:notice] = "Welcome #{user.username}!"
            session[:user_id] = user.id
            redirect_to root_path
        else
            flash.now[:alert] = "Invalid login credentials"
            render 'new'
        end
    end

    def destroy
        flash[:notice] = "Logout successfully!"
        session[:user_id] = nil
        redirect_to root_path
    end
    
end