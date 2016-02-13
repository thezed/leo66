class PrintwallpapersController < ApplicationController
  load_and_authorize_resource
  # GET /printwallpapers
  # GET /printwallpapers.xml
  def index
    @printwallpapers = Printwallpaper.paginate :page => params[:page], :per_page => 24

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @printwallpapers }
    end
  end

  # GET /printwallpapers/1
  # GET /printwallpapers/1.xml
  def show
    @printwallpaper = Printwallpaper.find(params[:id])
    @thumbs = Printwallpaper.all
    @object = Printwallpaper.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @printwallpaper }
    end
  end

  # GET /printwallpapers/new
  # GET /printwallpapers/new.xml
  def new
    @printwallpaper = Printwallpaper.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @printwallpaper }
    end
  end

  # GET /printwallpapers/1/edit
  def edit
    @printwallpaper = Printwallpaper.find(params[:id])
  end

  # POST /printwallpapers
  # POST /printwallpapers.xml
  def create
    @printwallpaper = Printwallpaper.new(params[:printwallpaper])

    respond_to do |format|
      if @printwallpaper.save
        flash[:notice] = 'Запись была успешно добавлена'
        format.html { redirect_to(@printwallpaper) }
        format.xml  { render :xml => @printwallpaper, :status => :created, :location => @printwallpaper }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @printwallpaper.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /printwallpapers/1
  # PUT /printwallpapers/1.xml
  def update
    @printwallpaper = Printwallpaper.find(params[:id])

    respond_to do |format|
      if @printwallpaper.update_attributes(params[:printwallpaper])
        flash[:notice] = 'Запись была успешно изменена'
        format.html { redirect_to(@printwallpaper) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @printwallpaper.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /printwallpapers/1
  # DELETE /printwallpapers/1.xml
  def destroy
    @printwallpaper = Printwallpaper.find(params[:id])
    @printwallpaper.destroy

    respond_to do |format|
      format.html { redirect_to(printwallpapers_url) }
      format.xml  { head :ok }
    end
  end
end
