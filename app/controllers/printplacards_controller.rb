class PrintplacardsController < ApplicationController
  load_and_authorize_resource
  # GET /printplacards
  # GET /printplacards.xml
  def index
    @printplacards = Printplacard.order(artikul: :asc).paginate :page => params[:page], :per_page => 24

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @printplacards }
    end
  end

  # GET /printplacards/1
  # GET /printplacards/1.xml
  def show
    @printplacard = Printplacard.find(params[:id])
    @thumbs = Printplacard.all
    @object = Printplacard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @printplacard }
    end
  end

  # GET /printplacards/new
  # GET /printplacards/new.xml
  def new
    @printplacard = Printplacard.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @printplacard }
    end
  end

  # GET /printplacards/1/edit
  def edit
    @printplacard = Printplacard.find(params[:id])
  end

  # POST /printplacards
  # POST /printplacards.xml
  def create
    @printplacard = Printplacard.new(params[:printplacard])

    respond_to do |format|
      if @printplacard.save
        flash[:notice] = 'Запись была успешно добавлена'
        format.html { redirect_to(@printplacard) }
        format.xml  { render :xml => @printplacard, :status => :created, :location => @printplacard }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @printplacard.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /printplacards/1
  # PUT /printplacards/1.xml
  def update
    @printplacard = Printplacard.find(params[:id])

    respond_to do |format|
      if @printplacard.update_attributes(params[:printplacard])
        flash[:notice] = 'Запись была успешно изменена'
        format.html { redirect_to(@printplacard) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @printplacard.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /printplacards/1
  # DELETE /printplacards/1.xml
  def destroy
    @printplacard = Printplacard.find(params[:id])
    @printplacard.destroy

    respond_to do |format|
      format.html { redirect_to(printplacards_url) }
      format.xml  { head :ok }
    end
  end
end
