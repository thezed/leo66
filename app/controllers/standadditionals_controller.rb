class StandadditionalsController < ApplicationController
  load_and_authorize_resource
  # GET /standadditionals
  # GET /standadditionals.xml
  def index
    @standadditionals = Standadditional.order(id: :asc).paginate :page => params[:page], :per_page => 24

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @standadditionals }
    end
  end

  # GET /standadditionals/1
  # GET /standadditionals/1.xml
  def show
    @standadditional = Standadditional.find(params[:id])
    @thumbs = Standadditional.all
    @object = Standadditional.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @standadditional }
    end
  end

  # GET /standadditionals/new
  # GET /standadditionals/new.xml
  def new
    @standadditional = Standadditional.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @standadditional }
    end
  end

  # GET /standadditionals/1/edit
  def edit
    @standadditional = Standadditional.find(params[:id])
  end

  # POST /standadditionals
  # POST /standadditionals.xml
  def create
    @standadditional = Standadditional.new(params[:standadditional])

    respond_to do |format|
      if @standadditional.save
        flash[:notice] = 'Запись была успешно добавлена'
        format.html { redirect_to(@standadditional) }
        format.xml  { render :xml => @standadditional, :status => :created, :location => @standadditional }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @standadditional.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /standadditionals/1
  # PUT /standadditionals/1.xml
  def update
    @standadditional = Standadditional.find(params[:id])

    respond_to do |format|
      if @standadditional.update_attributes(params[:standadditional])
        flash[:notice] = 'Запись была успешно изменена'
        format.html { redirect_to(@standadditional) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @standadditional.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /standadditionals/1
  # DELETE /standadditionals/1.xml
  def destroy
    @standadditional = Standadditional.find(params[:id])
    @standadditional.destroy

    respond_to do |format|
      format.html { redirect_to(standadditionals_url) }
      format.xml  { head :ok }
    end
  end

end
