class StoreController < ApplicationController
  def home
	@dives = Dive.order(:title)
  end

 def index
	if params[:id]
	@dives = Dive.order(:title)
	else
	@dives = Dive.order(:title)
	end
  end

  def about
  end

  def contact
  end
end
