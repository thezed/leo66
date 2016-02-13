class DopsportController < ApplicationController
  def index
    @page = Page.find_by(id: 9)
  end
  
  def show
    
  end
end