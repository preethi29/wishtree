class WishesController < ApplicationController
  def show
    @wish=Wish.find(params[:id])
  end

  def new
    if(user_signed_in?)
      @wish = Wish.new
    else
       render 'choose_user'
    end
  end

  def proceed_as_judge
    sign_in(guest_user)
    redirect_to new_wish_path
  end

  def create
    params.require(:wish).permit!
    needy_params= {name: params[:name], age: params[:age], country: params[:country]}
    needy=Needy.create(needy_params)
    @wish=Wish.create(params[:wish])
    if (@wish.save && needy.save)
      if(current_user.role.eql?'GUEST')
        sign_out(current_user)
      end
      redirect_to root_path
      @wish.update_attributes(needy_id: needy.id)
    else
      render 'new'
    end
  end

  def index
    @wishes = Wish.all
  end

  def guest_user
    User.find(session[:guest_user_id].nil? ? session[:guest_user_id] = create_guest_user.id : session[:guest_user_id])
  end

  def create_guest_user
    user = User.create(:name => "guest", :email => "guest_#{Time.now.to_i}#{rand(99)}@example.com", role: "GUEST")
    user.save(:validate => false)
    user
  end

end
