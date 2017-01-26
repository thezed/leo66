class StandchilsController < ApplicationController
  load_and_authorize_resource
  # GET /standchils
  # GET /standchils.xml
  def index
    @standchils = Standchil.order(artikul: :asc).paginate :page => params[:page], :per_page => 24

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @standchils }
    end
  end

  # GET /standchils/1
  # GET /standchils/1.xml
  def show
    @standchil = Standchil.find(params[:id])
    @thumbs = Standchil.all
    @object = Standchil.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @standchil }
    end
  end

  # GET /standchils/new
  # GET /standchils/new.xml
  def new
    @standchil = Standchil.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @standchil }
    end
  end

  # GET /standchils/1/edit
  def edit
    @standchil = Standchil.find(params[:id])
  end

  # POST /standchils
  # POST /standchils.xml
  def create
    @standchil = Standchil.new(params[:standchil])

    respond_to do |format|
      if @standchil.save
        flash[:notice] = 'Запись была успешно добавлена'
        format.html { redirect_to(@standchil) }
        format.xml  { render :xml => @standchil, :status => :created, :location => @standchil }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @standchil.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /standchils/1
  # PUT /standchils/1.xml
  def update
    @standchil = Standchil.find(params[:id])

    respond_to do |format|
      if @standchil.update_attributes(params[:standchil])
        flash[:notice] = 'Запись была успешно изменена'
        format.html { redirect_to(@standchil) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @standchil.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /standchils/1
  # DELETE /standchils/1.xml
  def destroy
    @standchil = Standchil.find(params[:id])
    @standchil.destroy

    respond_to do |format|
      format.html { redirect_to(standchils_url) }
      format.xml  { head :ok }
    end
  end
  
  def makeorder
    @standchil = Standchil.find(params[:id])
    Order.deliver_gmail_message(standchil)
    flash[:notice] = 'Спасибо, ваша заявка будет рассмотрена и наши менеджеры обязательно Вам перезвонят или напишут'
    redirect_to root_path
  end
  
end
