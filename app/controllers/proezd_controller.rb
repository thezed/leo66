class ProezdController < ApplicationController
  def index
    @page = Page.find_by(id: 7)
  end
  
  def show
    
  end
end