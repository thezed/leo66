class StanddousController < ApplicationController
  load_and_authorize_resource
  # GET /standdous
  # GET /standdous.xml
  def index
    @standdous = Standdou.paginate :page => params[:page], :per_page => 24

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @standdous }
    end
  end

  # GET /standdous/1
  # GET /standdous/1.xml
  def show
    @standdou = Standdou.find(params[:id])
    @thumbs = Standdou.all
    @object = Standdou.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @standdou }
    end
  end

  # GET /standdous/new
  # GET /standdous/new.xml
  def new
    @standdou = Standdou.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @standdou }
    end
  end

  # GET /standdous/1/edit
  def edit
    @standdou = Standdou.find(params[:id])
  end

  # POST /standdous
  # POST /standdous.xml
  def create
    @standdou = Standdou.new(params[:standdou])

    respond_to do |format|
      if @standdou.save
        flash[:notice] = 'Запись была успешно добавлена'
        format.html { redirect_to(@standdou) }
        format.xml  { render :xml => @standdou, :status => :created, :location => @standdou }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @standdou.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /standdous/1
  # PUT /standdous/1.xml
  def update
    @standdou = Standdou.find(params[:id])

    respond_to do |format|
      if @standdou.update_attributes(params[:standdou])
        flash[:notice] = 'Запись была успешно изменена'
        format.html { redirect_to(@standdou) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @standdou.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /standdous/1
  # DELETE /standdous/1.xml
  def destroy
    @standdou = Standdou.find(params[:id])
    @standdou.destroy

    respond_to do |format|
      format.html { redirect_to(standdous_url) }
      format.xml  { head :ok }
    end
  end
  

end
