class PrintpostersController < ApplicationController
  load_and_authorize_resource
  # GET /printposters
  # GET /printposters.xml
  def index
    @printposters = Printposter.order(artikul: :asc).paginate :page => params[:page], :per_page => 24

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @printposters }
    end
  end

  # GET /printposters/1
  # GET /printposters/1.xml
  def show
    @printposter = Printposter.find(params[:id])
    @thumbs = Printposter.all
    @object = Printposter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @printposter }
    end
  end

  # GET /printposters/new
  # GET /printposters/new.xml
  def new
    @printposter = Printposter.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @printposter }
    end
  end

  # GET /printposters/1/edit
  def edit
    @printposter = Printposter.find(params[:id])
  end

  # POST /printposters
  # POST /printposters.xml
  def create
    @printposter = Printposter.new(params[:printposter])

    respond_to do |format|
      if @printposter.save
        flash[:notice] = 'Запись была успешно добавлена'
        format.html { redirect_to(@printposter) }
        format.xml  { render :xml => @printposter, :status => :created, :location => @printposter }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @printposter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /printposters/1
  # PUT /printposters/1.xml
  def update
    @printposter = Printposter.find(params[:id])

    respond_to do |format|
      if @printposter.update_attributes(params[:printposter])
        flash[:notice] = 'Запись была успешно изменена'
        format.html { redirect_to(@printposter) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @printposter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /printposters/1
  # DELETE /printposters/1.xml
  def destroy
    @printposter = Printposter.find(params[:id])
    @printposter.destroy

    respond_to do |format|
      format.html { redirect_to(printposters_url) }
      format.xml  { head :ok }
    end
  end
end
