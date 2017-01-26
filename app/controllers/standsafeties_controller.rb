class StandsafetiesController < ApplicationController
  load_and_authorize_resource
  # GET /standsafeties
  # GET /standsafeties.xml
  def index
    @standsafeties = Standsafety.order(artikul: :asc).paginate :page => params[:page], :per_page => 24

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @standsafeties }
    end
  end

  # GET /standsafeties/1
  # GET /standsafeties/1.xml
  def show
    @standsafety = Standsafety.find(params[:id])
    @thumbs = Standsafety.all
    @object = Standsafety.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @standsafety }
    end
  end

  # GET /standsafeties/new
  # GET /standsafeties/new.xml
  def new
    @standsafety = Standsafety.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @standsafety }
    end
  end

  # GET /standsafeties/1/edit
  def edit
    @standsafety = Standsafety.find(params[:id])
  end

  # POST /standsafeties
  # POST /standsafeties.xml
  def create
    @standsafety = Standsafety.new(params[:standsafety])

    respond_to do |format|
      if @standsafety.save
        flash[:notice] = 'Запись была успешно добавлена'
        format.html { redirect_to(@standsafety) }
        format.xml  { render :xml => @standsafety, :status => :created, :location => @standsafety }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @standsafety.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /standsafeties/1
  # PUT /standsafeties/1.xml
  def update
    @standsafety = Standsafety.find(params[:id])

    respond_to do |format|
      if @standsafety.update_attributes(params[:standsafety])
        flash[:notice] = 'Запись была успешно изменена'
        format.html { redirect_to(@standsafety) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @standsafety.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /standsafeties/1
  # DELETE /standsafeties/1.xml
  def destroy
    @standsafety = Standsafety.find(params[:id])
    @standsafety.destroy

    respond_to do |format|
      format.html { redirect_to(standsafeties_url) }
      format.xml  { head :ok }
    end
  end
end
