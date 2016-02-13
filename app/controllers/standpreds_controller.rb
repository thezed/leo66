class StandpredsController < ApplicationController
  load_and_authorize_resource
  # GET /standpreds
  # GET /standpreds.xml
  def index
    @standpreds = Standpred.paginate :page => params[:page], :per_page => 24

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @standpreds }
    end
  end

  # GET /standpreds/1
  # GET /standpreds/1.xml
  def show
    @standpred = Standpred.find(params[:id])
    @thumbs = Standpred.all
    @object = Standpred.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @standpred }
    end
  end

  # GET /standpreds/new
  # GET /standpreds/new.xml
  def new
    @standpred = Standpred.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @standpred }
    end
  end

  # GET /standpreds/1/edit
  def edit
    @standpred = Standpred.find(params[:id])
  end

  # POST /standpreds
  # POST /standpreds.xml
  def create
    @standpred = Standpred.new(params[:standpred])

    respond_to do |format|
      if @standpred.save
        flash[:notice] = 'Запись была успешно добавлена'
        format.html { redirect_to(@standpred) }
        format.xml  { render :xml => @standpred, :status => :created, :location => @standpred }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @standpred.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /standpreds/1
  # PUT /standpreds/1.xml
  def update
    @standpred = Standpred.find(params[:id])

    respond_to do |format|
      if @standpred.update_attributes(params[:standpred])
        flash[:notice] = 'Standpred была успешно изменена'
        format.html { redirect_to(@standpred) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @standpred.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /standpreds/1
  # DELETE /standpreds/1.xml
  def destroy
    @standpred = Standpred.find(params[:id])
    @standpred.destroy

    respond_to do |format|
      format.html { redirect_to(standpreds_url) }
      format.xml  { head :ok }
    end
  end
end
