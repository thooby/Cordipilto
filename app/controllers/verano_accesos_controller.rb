class VeranoAccesosController < ApplicationController
  # GET /verano_accesos
  # GET /verano_accesos.xml
  def index
    @verano_accesos = VeranoAcceso.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @verano_accesos }
    end
  end

  # GET /verano_accesos/1
  # GET /verano_accesos/1.xml
  def show
    @verano_acceso = VeranoAcceso.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @verano_acceso }
    end
  end

  # GET /verano_accesos/new
  # GET /verano_accesos/new.xml
  def new
    @verano_acceso = VeranoAcceso.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @verano_acceso }
    end
  end

  # GET /verano_accesos/1/edit
  def edit
    @verano_acceso = VeranoAcceso.find(params[:id])
  end

  # POST /verano_accesos
  # POST /verano_accesos.xml
  def create
    @verano_acceso = VeranoAcceso.new(params[:verano_acceso])

    respond_to do |format|
      if @verano_acceso.save
        flash[:notice] = 'VeranoAcceso was successfully created.'
        format.html { redirect_to(@verano_acceso) }
        format.xml  { render :xml => @verano_acceso, :status => :created, :location => @verano_acceso }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @verano_acceso.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /verano_accesos/1
  # PUT /verano_accesos/1.xml
  def update
    @verano_acceso = VeranoAcceso.find(params[:id])

    respond_to do |format|
      if @verano_acceso.update_attributes(params[:verano_acceso])
        flash[:notice] = 'VeranoAcceso was successfully updated.'
        format.html { redirect_to(@verano_acceso) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @verano_acceso.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /verano_accesos/1
  # DELETE /verano_accesos/1.xml
  def destroy
    @verano_acceso = VeranoAcceso.find(params[:id])
    @verano_acceso.destroy

    respond_to do |format|
      format.html { redirect_to(verano_accesos_url) }
      format.xml  { head :ok }
    end
  end
end
