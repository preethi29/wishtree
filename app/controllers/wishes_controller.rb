class WishesController < ApplicationController
  def show
    @wish=Wish.find(params[:id])
  end

  def new
    @wish = Wish.new
  end

  def create
    params.require(:wish).permit!
    @wish=Wish.create(params[:wish])
    needy_params= {name: params[:name], age: params[:age], country: params[:country]}
    @needy=Needy.create(needy_params)
    if (@wish.save && @needy.save)
      redirect_to root_path
    else
      render 'new'
    end
  end

  def index
    session[:guest_user_id]= nil
    @wishes = Wish.all
  end

end
