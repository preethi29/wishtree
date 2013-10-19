class ContributionsController < ApplicationController
  def new
    @contribution = Contribution.new
  end

  def create
    params.require(:contribution).permit!
    @contribution = Contribution.create( params[:contribution])
    if @contribution.save
      redirect_to root_path
    else
      render 'new'
    end
  end
end
