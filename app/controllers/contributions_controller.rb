class ContributionsController < ApplicationController
  def new
    @contribution = Contribution.new
  end

  def create
    params.require(:contribution).permit!
    @contribution = Contribution.create( params[:contribution])
    if @contribution.save
      current_user.update_attributes(email: params[:email])
      update_percent_fulfilled(@contribution)
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update_percent_fulfilled(contribution)
    wish = Wish.find_by(id: contribution.wish_id)
    percent_fullfilled = ((wish.quantity * (wish.percent_fullfilled / 100))+ contribution.contributed_qty )/wish.quantity
    wish.update_attributes(percent_fullfilled: percent_fullfilled*100)
  end

  def current_user
    super || guest_user
  end

  private

  def guest_user
    User.find(session[:guest_user_id].nil? ? session[:guest_user_id] = create_guest_user.id : session[:guest_user_id])
  end

  def create_guest_user
    user = User.create(:name => "guest", :email => "guest_#{Time.now.to_i}#{rand(99)}@example.com")
    user.save(:validate => false)
    user
  end

end
