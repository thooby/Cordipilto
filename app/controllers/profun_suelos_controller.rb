class ProfunSuelosController < ApplicationController
  # GET /profun_suelos
  # GET /profun_suelos.xml
  def index
    @profun_suelos = ProfunSuelo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @profun_suelos }
    end
  end

  # GET /profun_suelos/1
  # GET /profun_suelos/1.xml
  def show
    @profun_suelo = ProfunSuelo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @profun_suelo }
    end
  end

  # GET /profun_suelos/new
  # GET /profun_suelos/new.xml
  def new
    @profun_suelo = ProfunSuelo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @profun_suelo }
    end
  end

  # GET /profun_suelos/1/edit
  def edit
    @profun_suelo = ProfunSuelo.find(params[:id])
  end

  # POST /profun_suelos
  # POST /profun_suelos.xml
  def create
    @profun_suelo = ProfunSuelo.new(params[:profun_suelo])

    respond_to do |format|
      if @profun_suelo.save
        flash[:notice] = 'ProfunSuelo was successfully created.'
        format.html { redirect_to(@profun_suelo) }
        format.xml  { render :xml => @profun_suelo, :status => :created, :location => @profun_suelo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @profun_suelo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /profun_suelos/1
  # PUT /profun_suelos/1.xml
  def update
    @profun_suelo = ProfunSuelo.find(params[:id])

    respond_to do |format|
      if @profun_suelo.update_attributes(params[:profun_suelo])
        flash[:notice] = 'ProfunSuelo was successfully updated.'
        format.html { redirect_to(@profun_suelo) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @profun_suelo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /profun_suelos/1
  # DELETE /profun_suelos/1.xml
  def destroy
    @profun_suelo = ProfunSuelo.find(params[:id])
    @profun_suelo.destroy

    respond_to do |format|
      format.html { redirect_to(profun_suelos_url) }
      format.xml  { head :ok }
    end
  end
end
