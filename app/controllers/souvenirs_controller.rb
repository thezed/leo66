class SouvenirsController < ApplicationController
  load_and_authorize_resource
  # GET /souvenirs
  # GET /souvenirs.xml
  def index
    @souvenirs = Souvenir.order(artikul: :asc).paginate :page => params[:page], :per_page => 24

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @souvenirs }
    end
  end

  # GET /souvenirs/1
  # GET /souvenirs/1.xml
  def show
    @souvenir = Souvenir.find(params[:id])
    @thumbs = Souvenir.all
    @object = Souvenir.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @souvenir }
    end
  end

  # GET /souvenirs/new
  # GET /souvenirs/new.xml
  def new
    @souvenir = Souvenir.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @souvenir }
    end
  end

  # GET /souvenirs/1/edit
  def edit
    @souvenir = Souvenir.find(params[:id])
  end

  # POST /souvenirs
  # POST /souvenirs.xml
  def create
    @souvenir = Souvenir.new(params[:souvenir])

    respond_to do |format|
      if @souvenir.save
        flash[:notice] = 'Запись была успешно добавлена'
        format.html { redirect_to(@souvenir) }
        format.xml  { render :xml => @souvenir, :status => :created, :location => @souvenir }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @souvenir.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /souvenirs/1
  # PUT /souvenirs/1.xml
  def update
    @souvenir = Souvenir.find(params[:id])

    respond_to do |format|
      if @souvenir.update_attributes(params[:souvenir])
        flash[:notice] = 'Запись была успешно изменена'
        format.html { redirect_to(@souvenir) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @souvenir.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /souvenirs/1
  # DELETE /souvenirs/1.xml
  def destroy
    @souvenir = Souvenir.find(params[:id])
    @souvenir.destroy

    respond_to do |format|
      format.html { redirect_to(souvenirs_url) }
      format.xml  { head :ok }
    end
  end
end
