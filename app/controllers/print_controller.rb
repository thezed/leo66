class PrintController < ApplicationController
  def index
    @page = Page.find_by(id: 6)
  end
  
  def show
    
  end
end