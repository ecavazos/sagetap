class QuotesController < ApplicationController
  def new
    @quote = Quote.new
  end
end
