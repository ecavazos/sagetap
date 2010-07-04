class QuotesController < ApplicationController
  def index
    @quotes = Quote.all
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = current_user.quotes.build params[:quote]

    if @quote.save
      redirect_to root_path
    else
      render :action => 'new'
    end
  end
end
