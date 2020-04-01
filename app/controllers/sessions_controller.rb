class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].present?
    session[:name]=params[:name]
    redirect_to '/'
    else
      redirect_to(controller: 'sessions', action: 'new')
    end
  end

  def destroy
    session.delete :name
  end
end
