class WishController < ApplicationController
  def show
    @wish=Wish.find(params[:id])
    end
  
  def index
    @wishes = Wish.all
  end

end
