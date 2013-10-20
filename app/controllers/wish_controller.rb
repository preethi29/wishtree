class WishController < ApplicationController
  def show
    @wish=Wish.find(params[:id])
    end
  
  def index
    session[:guest_user_id]= nil
    @wishes = Wish.all
  end

end
