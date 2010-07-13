class AccesosController < ApplicationController
  # GET /accesos
  # GET /accesos.xml
  def index
    @accesos = Acceso.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @accesos }
    end
  end

  # GET /accesos/1
  # GET /accesos/1.xml
  def show
    @acceso = Acceso.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @acceso }
    end
  end

  # GET /accesos/new
  # GET /accesos/new.xml
  def new
    @acceso = Acceso.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @acceso }
    end
  end

  # GET /accesos/1/edit
  def edit
    @acceso = Acceso.find(params[:id])
  end

  # POST /accesos
  # POST /accesos.xml
  def create
    @acceso = Acceso.new(params[:acceso])

    respond_to do |format|
      if @acceso.save
        flash[:notice] = 'Acceso was successfully created.'
        format.html { redirect_to(@acceso) }
        format.xml  { render :xml => @acceso, :status => :created, :location => @acceso }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @acceso.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /accesos/1
  # PUT /accesos/1.xml
  def update
    @acceso = Acceso.find(params[:id])

    respond_to do |format|
      if @acceso.update_attributes(params[:acceso])
        flash[:notice] = 'Acceso was successfully updated.'
        format.html { redirect_to(@acceso) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @acceso.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /accesos/1
  # DELETE /accesos/1.xml
  def destroy
    @acceso = Acceso.find(params[:id])
    @acceso.destroy

    respond_to do |format|
      format.html { redirect_to(accesos_url) }
      format.xml  { head :ok }
    end
  end
end
