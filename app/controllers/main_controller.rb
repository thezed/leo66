class MainController < ApplicationController
  def index
    @page = Page.find_by(id: 1)
  end
  
  def show
    
  end
end