class DopequipmentController < ApplicationController
  def index
    @page = Page.find_by(id: 4)
  end
  
  def show
    
  end
end