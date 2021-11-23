class DashboardController < ApplicationController
  def show
    # @pfander = User.where(user: user.donor = false)
    @donor = User.where(doner: true)
  end

  def update
    # change the status of active offer to confirmed offer
  end
end
