class PagesController < ApplicationController
  def pfander_dashboard
  end

  def donor_dashboard
    @user = current_user
    @last_offer = @user.offers.last
    @booking_guy = @user.bookings.last
  end

  def home
  end
end
