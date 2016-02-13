class ContactsController < ApplicationController
  def index
    @page = Page.find_by(id: 2)
  end
  
  def show
    
  end
end