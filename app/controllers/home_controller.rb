class HomeController < ApplicationController
  before_filter :authenticate_user!, :only => [:test]
  def index
    @quote = Quote.first
  end
end
