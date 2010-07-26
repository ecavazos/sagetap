class HomeController < ApplicationController
  def index
    @quote = Quote.first
  end
end
