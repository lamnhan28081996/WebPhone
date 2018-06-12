class StoreController < ApplicationController
	# include CurrentCart
	# before_action :set_cart
  def index
  	@products = Product.all.paginate(:page => params[:page], :per_page => 5)
  	@cart = current_cart
  end
end
