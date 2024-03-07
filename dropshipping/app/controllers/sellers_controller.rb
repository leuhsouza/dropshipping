class SellersController < ApplicationController
  before_action :set_seller, only: [:show, :edit, :update, :destroy]

  def index
    @sellers = Seller.all
  end

  def Show
  end

  def new
    @seller = Seller.new
  end

  def edit
  end

  def create
    @seller = Seller.new(seller_params)
    if @seller.save
      redirect_to @seller, notice: 'Seller was successfully created'
    else
      render :new
    end
  end

  def update
    if @seller.update(seller_params)
      redirect_to @seller, notice: 'Seller was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @seller.destroy
    redirect_to sellers_url, notice: 'Seller was successfully destroyed'
  end

  private
  def set_seller
    @seller = Seller.find(params[:id])
  end

  def sellers_params
    params.require(:seller).permit(:name, :email, :phone)
  end
end
