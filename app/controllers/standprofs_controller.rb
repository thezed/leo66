class StandprofsController < ApplicationController
  load_and_authorize_resource
  # GET /standprofs
  # GET /standprofs.xml
  def index
    @standprofs = Standprof.order(artikul: :asc).paginate :page => params[:page], :per_page => 24

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @standprofs }
    end
  end

  # GET /standprofs/1
  # GET /standprofs/1.xml
  def show
    @standprof = Standprof.find(params[:id])
    @thumbs = Standprof.all
    @object = Standprof.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @standprof }
    end
  end

  # GET /standprofs/new
  # GET /standprofs/new.xml
  def new
    @standprof = Standprof.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @standprof }
    end
  end

  # GET /standprofs/1/edit
  def edit
    @standprof = Standprof.find(params[:id])
  end

  # POST /standprofs
  # POST /standprofs.xml
  def create
    @standprof = Standprof.new(params[:standprof])

    respond_to do |format|
      if @standprof.save
        flash[:notice] = 'Запись была успешно добавлена'
        format.html { redirect_to(@standprof) }
        format.xml  { render :xml => @standprof, :status => :created, :location => @standprof }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @standprof.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /standprofs/1
  # PUT /standprofs/1.xml
  def update
    @standprof = Standprof.find(params[:id])

    respond_to do |format|
      if @standprof.update_attributes(params[:standprof])
        flash[:notice] = 'Запись была успешно изменена'
        format.html { redirect_to(@standprof) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @standprof.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /standprofs/1
  # DELETE /standprofs/1.xml
  def destroy
    @standprof = Standprof.find(params[:id])
    @standprof.destroy

    respond_to do |format|
      format.html { redirect_to(standprofs_url) }
      format.xml  { head :ok }
    end
  end
end
