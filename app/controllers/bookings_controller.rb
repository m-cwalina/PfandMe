class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @offer = Offer.find(params[:offer_id])
  end

  def create
    @booking = Booking.new
    @offer = Offer.find(params[:offer_id])
    @booking.offer = @offer
    @booking.user = current_user
    @booking.status = "accepted"
    if @booking.save
      redirect_to pfander_dashboard_path, notice: 'Booking was successfully created.'
    else
      redirect_to offers_path
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.status = "completed"
    @booking.save
    redirect_to pfander_dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :user_id, :offer_id)
  end
end
