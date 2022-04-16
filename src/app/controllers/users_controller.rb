class UsersController < ApplicationController
  def show
    @data = current_user.event.where(start_date: Date.today.beginning_of_month..Date.today)
  end
end
