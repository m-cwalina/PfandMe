class OffersController < ApplicationController
  def index
    @offers = Offer.all
    # @offers = Offer.where(bookings = [])

  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to offer_path(@offer), notice: 'Offer was successfully created.'
    else
      render :new
    end
  end

  def edit
    @offer = Offer.find(params[:id])
  end

  def update
    @offer = Offer.find(params[:id])
    @offer.update(offer_params)
    redirect_to offer_path(@offer), notice: 'Offer was successfully updated.'
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    redirect_to offers_path, notice: 'Offer was successfully deleted.'
  end

  private

  def offer_params
    params.require(:offer).permit(:plastic_bottles, :glass_bottles, :crates, :timeslot, :comment, :tip)
  end
end
