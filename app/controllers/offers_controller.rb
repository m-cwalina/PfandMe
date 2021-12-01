class OffersController < ApplicationController
  def index
    # offers where completed == false
    @offers = Offer.all
    @users = User.where.not(latitude: nil, longitude: nil).where(donor: true)

    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        infoWindow: { content: render_to_string(partial: "/offers/map_box", locals: { user: user }) }
      }
    end
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
      redirect_to donor_dashboard_path, notice: 'Offer was successfully created.'
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
    redirect_to donor_dashboard_path, notice: 'Offer was successfully updated.'
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
