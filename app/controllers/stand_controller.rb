class StandController < ApplicationController
  def index
    @page = Page.find_by(id: 8)
  end
  
  def show
    
  end
end