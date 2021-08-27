class PagesController < ApplicationController
  def index
    @articals =Artical.all
  end

  def contact
  end

  def about
  end
end
