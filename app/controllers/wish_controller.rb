class WishController < ApplicationController
  def show
    @wish=Wish.find(params[:id])
  end
end
