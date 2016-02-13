class StandchildrensController < ApplicationController
  load_and_authorize_resource
  # GET /standchildrens
  # GET /standchildrens.xml
  def index
    @standchildrens = Standchildren.paginate :page => params[:page], :per_page => 24

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @standchildrens }
    end
  end

  # GET /standchildrens/1
  # GET /standchildrens/1.xml
  def show
    @standchildren = Standchildren.find(params[:id])
    @thumbs = Standchildren.all
    @object = Standchildren.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @standchildren }
    end
  end

  # GET /standchildrens/new
  # GET /standchildrens/new.xml
  def new
    @standchildren = Standchildren.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @standchildren }
    end
  end

  # GET /standchildrens/1/edit
  def edit
    @standchildren = Standchildren.find(params[:id])
  end

  # POST /standchildrens
  # POST /standchildrens.xml
  def create
    @standchildren = Standchildren.new(params[:standchildren])

    respond_to do |format|
      if @standchildren.save
        flash[:notice] = 'Запись была успешно добавлена'
        format.html { redirect_to(@standchildren) }
        format.xml  { render :xml => @standchildren, :status => :created, :location => @standchildren }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @standchildren.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /standchildrens/1
  # PUT /standchildrens/1.xml
  def update
    @standchildren = Standchildren.find(params[:id])

    respond_to do |format|
      if @standchildren.update_attributes(params[:standchildren])
        flash[:notice] = 'Запись была успешно изменена'
        format.html { redirect_to(@standchildren) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @standchildren.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /standchildrens/1
  # DELETE /standchildrens/1.xml
  def destroy
    @standchildren = Standchildren.find(params[:id])
    @standchildren.destroy

    respond_to do |format|
      format.html { redirect_to(standchildrens_url) }
      format.xml  { head :ok }
    end
  end
  
  def makeorder
    @standchildren = Standchildren.find(params[:id])
    Order.deliver_gmail_message(standchildren)
    flash[:notice] = 'Спасибо, ваша заявка будет рассмотрена и наши менеджеры обязательно Вам перезвонят или напишут'
    redirect_to root_path
  end
  
end
