class ChargesController < ApplicationController

  def new
  end
  
  def create
    charge = Charge.new(current_user, params[:stripeToken])
    charge.process
    redirect_to root_path
    flash[:notice] = "Thank you for your purchase!"
  end

end