class DopballoonController < ApplicationController
  def index
    @page = Page.find_by(id: 3)
  end
  
  def show
    
  end
end