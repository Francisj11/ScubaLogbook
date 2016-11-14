class StoreController < ApplicationController
  def home
	@dives = Dive.order(:title)
  end

  def about
  end

  def contact
  end
end
