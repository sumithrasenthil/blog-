class SessionsController < ApplicationController
  def new
  end

  def create
    @creature = Creature.find_by(firstname: params[:firstname])
    puts"......creature..>>>#{@creature}........."
    if @creature and @creature.authenticate(params[:password])
      session[:user_id] = @creature.id
      redirect_to "/welcome"
    end
    # session[:user_id] = @creature.id
    # redirect_to "/welcome"
  end

  def login
  end

  def welcome
  end

  def logout 
    session[:user_id] = nil
    redirect_to "/welcome"
  end
end
