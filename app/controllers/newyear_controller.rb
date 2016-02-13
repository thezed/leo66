class NewyearController < ApplicationController
  def index
    @page = Page.find_by(id: 10)
  end
  
  def show
    
  end
end