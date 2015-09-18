class StoreController < ApplicationController

  def index
  	
  	@products = Product.order(:title)
  	@counter = session[:counter]
  	if session[:counter].nil?
  	  @counter = 1
  	else
  	  @counter +=1
  	session[:counter] = @counter
  	end	
  end
end
