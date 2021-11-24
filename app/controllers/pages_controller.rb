class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def pfander_dashboard
  end

  def donor_dashboard
    @user = current_user
    @last_offer = @user.offers.last
  end

  def home
  end
end
