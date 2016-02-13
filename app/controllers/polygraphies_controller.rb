class PolygraphiesController < ApplicationController
  load_and_authorize_resource
  # GET /polygraphies
  # GET /polygraphies.xml
  def index
    @polygraphies = Polygraphy.paginate :page => params[:page], :per_page => 24

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @polygraphies }
    end
  end

  # GET /polygraphies/1
  # GET /polygraphies/1.xml
  def show
    @polygraphy = Polygraphy.find(params[:id])
    @thumbs = Polygraphy.all
    @object = Polygraphy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @polygraphy }
    end
  end

  # GET /polygraphies/new
  # GET /polygraphies/new.xml
  def new
    @polygraphy = Polygraphy.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @polygraphy }
    end
  end

  # GET /polygraphies/1/edit
  def edit
    @polygraphy = Polygraphy.find(params[:id])
  end

  # POST /polygraphies
  # POST /polygraphies.xml
  def create
    @polygraphy = Polygraphy.new(params[:polygraphy])

    respond_to do |format|
      if @polygraphy.save
        flash[:notice] = 'Запись была успешно добавлена'
        format.html { redirect_to(@polygraphy) }
        format.xml  { render :xml => @polygraphy, :status => :created, :location => @polygraphy }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @polygraphy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /polygraphies/1
  # PUT /polygraphies/1.xml
  def update
    @polygraphy = Polygraphy.find(params[:id])

    respond_to do |format|
      if @polygraphy.update_attributes(params[:polygraphy])
        flash[:notice] = 'Запись была успешно изменена'
        format.html { redirect_to(@polygraphy) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @polygraphy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /polygraphies/1
  # DELETE /polygraphies/1.xml
  def destroy
    @polygraphy = Polygraphy.find(params[:id])
    @polygraphy.destroy

    respond_to do |format|
      format.html { redirect_to(polygraphies_url) }
      format.xml  { head :ok }
    end
  end
end
