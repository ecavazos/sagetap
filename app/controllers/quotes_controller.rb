class QuotesController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]

  def index
    @quotes = Quote.order('created_at desc')
  end

  def show
    @quote = Quote.find(params[:id])
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = current_user.quotes.build params[:quote]

    if @quote.save
      if current_user.is_root?
        return redirect_to quotes_url
      end
      redirect_to root_path
    else
      render :action => 'new'
    end
  end

  def destroy
    # TODO: only root user can delete

    Quote.find(params[:id]).destroy
    redirect_to quotes_url
  end
end
