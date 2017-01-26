class StandstickersController < ApplicationController
  load_and_authorize_resource
  # GET /standstickers
  # GET /standstickers.xml
  def index
    @standstickers = Standsticker.order(artikul: :asc).paginate :page => params[:page], :per_page => 24

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @standstickers }
    end
  end

  # GET /standstickers/1
  # GET /standstickers/1.xml
  def show
    @standsticker = Standsticker.find(params[:id])
    @thumbs = Standsticker.all
    @object = Standsticker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @standsticker }
    end
  end

  # GET /standstickers/new
  # GET /standstickers/new.xml
  def new
    @standsticker = Standsticker.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @standsticker }
    end
  end

  # GET /standstickers/1/edit
  def edit
    @standsticker = Standsticker.find(params[:id])
  end

  # POST /standstickers
  # POST /standstickers.xml
  def create
    @standsticker = Standsticker.new(params[:standsticker])

    respond_to do |format|
      if @standsticker.save
        flash[:notice] = 'Запись была успешно добавлена'
        format.html { redirect_to(@standsticker) }
        format.xml  { render :xml => @standsticker, :status => :created, :location => @standsticker }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @standsticker.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /standstickers/1
  # PUT /standstickers/1.xml
  def update
    @standsticker = Standsticker.find(params[:id])

    respond_to do |format|
      if @standsticker.update_attributes(params[:standsticker])
        flash[:notice] = 'Запись была успешно изменена'
        format.html { redirect_to(@standsticker) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @standsticker.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /standstickers/1
  # DELETE /standstickers/1.xml
  def destroy
    @standsticker = Standsticker.find(params[:id])
    @standsticker.destroy

    respond_to do |format|
      format.html { redirect_to(standstickers_url) }
      format.xml  { head :ok }
    end
  end
  
end
