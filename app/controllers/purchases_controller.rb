class PurchasesController < ApplicationController

  before_action :ensure_logged_in

  def new
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchase.new(purchase_params)
    if @purchase.save
      redirect_to projects_path
    else
      render :new
    end
  end

  private
  def purchase_params
    params.require(:purchase).permit(:number_of_shares)
  end
end
