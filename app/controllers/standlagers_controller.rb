class StandlagersController < ApplicationController
  load_and_authorize_resource
  # GET /standlagers
  # GET /standlagers.xml
  def index
    @standlagers = Standlager.paginate :page => params[:page], :per_page => 24

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @standlagers }
    end
  end

  # GET /standlagers/1
  # GET /standlagers/1.xml
  def show
    @standlager = Standlager.find(params[:id])
    @thumbs = Standlager.all
    @object = Standlager.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @standlager }
    end
  end

  # GET /standlagers/new
  # GET /standlagers/new.xml
  def new
    @standlager = Standlager.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @standlager }
    end
  end

  # GET /standlagers/1/edit
  def edit
    @standlager = Standlager.find(params[:id])
  end

  # POST /standlagers
  # POST /standlagers.xml
  def create
    @standlager = Standlager.new(params[:standlager])

    respond_to do |format|
      if @standlager.save
        flash[:notice] = 'Запись была успешно добавлена'
        format.html { redirect_to(@standlager) }
        format.xml  { render :xml => @standlager, :status => :created, :location => @standlager }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @standlager.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /standlagers/1
  # PUT /standlagers/1.xml
  def update
    @standlager = Standlager.find(params[:id])

    respond_to do |format|
      if @standlager.update_attributes(params[:standlager])
        flash[:notice] = 'Запись была успешно изменена'
        format.html { redirect_to(@standlager) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @standlager.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /standlagers/1
  # DELETE /standlagers/1.xml
  def destroy
    @standlager = Standlager.find(params[:id])
    @standlager.destroy

    respond_to do |format|
      format.html { redirect_to(standlagers_url) }
      format.xml  { head :ok }
    end
  end
end
