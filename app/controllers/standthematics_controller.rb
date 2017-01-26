class StandthematicsController < ApplicationController
  load_and_authorize_resource
  # GET /standthematics
  # GET /standthematics.xml
  def index
    @standthematics = Standthematic.order(id: :asc).paginate :page => params[:page], :per_page => 24

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @standthematics }
    end
  end

  # GET /standthematics/1
  # GET /standthematics/1.xml
  def show
    @standthematic = Standthematic.find(params[:id])
    @thumbs = Standthematic.all
    @object = Standthematic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @standthematic }
    end
  end

  # GET /standthematics/new
  # GET /standthematics/new.xml
  def new
    @standthematic = Standthematic.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @standthematic }
    end
  end

  # GET /standthematics/1/edit
  def edit
    @standthematic = Standthematic.find(params[:id])
  end

  # POST /standthematics
  # POST /standthematics.xml
  def create
    @standthematic = Standthematic.new(params[:standthematic])

    respond_to do |format|
      if @standthematic.save
        flash[:notice] = 'Запись была успешно добавлена'
        format.html { redirect_to(@standthematic) }
        format.xml  { render :xml => @standthematic, :status => :created, :location => @standthematic }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @standthematic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /standthematics/1
  # PUT /standthematics/1.xml
  def update
    @standthematic = Standthematic.find(params[:id])

    respond_to do |format|
      if @standthematic.update_attributes(params[:standthematic])
        flash[:notice] = 'Запись была успешно изменена'
        format.html { redirect_to(@standthematic) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @standthematic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /standthematics/1
  # DELETE /standthematics/1.xml
  def destroy
    @standthematic = Standthematic.find(params[:id])
    @standthematic.destroy

    respond_to do |format|
      format.html { redirect_to(standthematics_url) }
      format.xml  { head :ok }
    end
  end
end
