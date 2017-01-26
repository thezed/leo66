class ExposController < ApplicationController
  load_and_authorize_resource
  # GET /expos
  # GET /expos.xml
  def index
    @expos = Expo.order(artikul: :asc).paginate :page => params[:page], :per_page => 24

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @expos }
    end
  end

  # GET /expos/1
  # GET /expos/1.xml
  def show
    @expo = Expo.find(params[:id])
    @thumbs = Expo.all
    @object = Expo.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @expo }
    end
  end

  # GET /expos/new
  # GET /expos/new.xml
  def new
    @expo = Expo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @expo }
    end
  end

  # GET /expos/1/edit
  def edit
    @expo = Expo.find(params[:id])
  end

  # POST /expos
  # POST /expos.xml
  def create
    @expo = Expo.new(params[:expo])

    respond_to do |format|
      if @expo.save
        flash[:notice] = 'Запись была успешно добавлена'
        format.html { redirect_to(@expo) }
        format.xml  { render :xml => @expo, :status => :created, :location => @expo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @expo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /expos/1
  # PUT /expos/1.xml
  def update
    @expo = Expo.find(params[:id])

    respond_to do |format|
      if @expo.update_attributes(params[:expo])
        flash[:notice] = 'Запись была успешно изменена'
        format.html { redirect_to(@expo) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @expo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /expos/1
  # DELETE /expos/1.xml
  def destroy
    @expo = Expo.find(params[:id])
    @expo.destroy

    respond_to do |format|
      format.html { redirect_to(expos_url) }
      format.xml  { head :ok }
    end
  end
end
