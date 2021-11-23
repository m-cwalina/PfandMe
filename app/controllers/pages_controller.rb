class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def dashboard
    @user = current_user
    @last_offer = @user.offers.last
  end
end
