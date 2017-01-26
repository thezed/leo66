class StandschoolsController < ApplicationController
  load_and_authorize_resource
  # GET /standschools
  # GET /standschools.xml
  def index
    @standschools = Standschool.order(artikul: :asc).order(artikul: :asc).paginate :page => params[:page], :per_page => 24

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @standschools }
    end
  end

  # GET /standschools/1
  # GET /standschools/1.xml
  def show
    @standschool = Standschool.find(params[:id])
    @thumbs = Standschool.all
    @object = Standschool.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @standschool }
    end
  end

  # GET /standschools/new
  # GET /standschools/new.xml
  def new
    @standschool = Standschool.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @standschool }
    end
  end

  # GET /standschools/1/edit
  def edit
    @standschool = Standschool.find(params[:id])
  end

  # POST /standschools
  # POST /standschools.xml
  def create
    @standschool = Standschool.new(params[:standschool])

    respond_to do |format|
      if @standschool.save
        flash[:notice] = 'Запись была успешно добавлена'
        format.html { redirect_to(@standschool) }
        format.xml  { render :xml => @standschool, :status => :created, :location => @standschool }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @standschool.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /standschools/1
  # PUT /standschools/1.xml
  def update
    @standschool = Standschool.find(params[:id])

    respond_to do |format|
      if @standschool.update_attributes(params[:standschool])
        flash[:notice] = 'Запись была успешно изменена'
        format.html { redirect_to(@standschool) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @standschool.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /standschools/1
  # DELETE /standschools/1.xml
  def destroy
    @standschool = Standschool.find(params[:id])
    @standschool.destroy

    respond_to do |format|
      format.html { redirect_to(standschools_url) }
      format.xml  { head :ok }
    end
  end
end
