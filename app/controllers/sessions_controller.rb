class SessionsController < ApplicationController
  def new
  end

  # def create
  #  if session[:username] = params[:username]
  #   redirect_to login_path
  #   session[:name]= params[:name]
  #   # if logged_in? 
  #   #   redirect_to root_path
  #     if !params[:name] || params{:name} = ""
  #     redirect_to login_path
  #   end
  # end

  def create 
    if !params[:name] || params[:name].empty?
      redirect_to login_path
    else 
      session[:username] = params[:username]
      session[:name] = params[:name]
      redirect_to root_path
    end
  end



  def destroy
    session.delete :username
    if session[:name] = ""
      session.delete :name

    redirect_to root_path
  end
end
end
