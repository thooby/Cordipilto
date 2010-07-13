class FertilizasController < ApplicationController
  # GET /fertilizas
  # GET /fertilizas.xml
  def index
    @fertilizas = Fertiliza.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fertilizas }
    end
  end

  # GET /fertilizas/1
  # GET /fertilizas/1.xml
  def show
    @fertiliza = Fertiliza.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fertiliza }
    end
  end

  # GET /fertilizas/new
  # GET /fertilizas/new.xml
  def new
    @fertiliza = Fertiliza.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fertiliza }
    end
  end

  # GET /fertilizas/1/edit
  def edit
    @fertiliza = Fertiliza.find(params[:id])
  end

  # POST /fertilizas
  # POST /fertilizas.xml
  def create
    @fertiliza = Fertiliza.new(params[:fertiliza])

    respond_to do |format|
      if @fertiliza.save
        flash[:notice] = 'Fertiliza was successfully created.'
        format.html { redirect_to(@fertiliza) }
        format.xml  { render :xml => @fertiliza, :status => :created, :location => @fertiliza }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @fertiliza.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /fertilizas/1
  # PUT /fertilizas/1.xml
  def update
    @fertiliza = Fertiliza.find(params[:id])

    respond_to do |format|
      if @fertiliza.update_attributes(params[:fertiliza])
        flash[:notice] = 'Fertiliza was successfully updated.'
        format.html { redirect_to(@fertiliza) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fertiliza.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fertilizas/1
  # DELETE /fertilizas/1.xml
  def destroy
    @fertiliza = Fertiliza.find(params[:id])
    @fertiliza.destroy

    respond_to do |format|
      format.html { redirect_to(fertilizas_url) }
      format.xml  { head :ok }
    end
  end
end
