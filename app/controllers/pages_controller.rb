class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @towns = Town.all.order(score: :desc)
  end
end
