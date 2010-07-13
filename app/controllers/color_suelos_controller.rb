class ColorSuelosController < ApplicationController
  # GET /color_suelos
  # GET /color_suelos.xml
  def index
    @color_suelos = ColorSuelo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @color_suelos }
    end
  end

  # GET /color_suelos/1
  # GET /color_suelos/1.xml
  def show
    @color_suelo = ColorSuelo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @color_suelo }
    end
  end

  # GET /color_suelos/new
  # GET /color_suelos/new.xml
  def new
    @color_suelo = ColorSuelo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @color_suelo }
    end
  end

  # GET /color_suelos/1/edit
  def edit
    @color_suelo = ColorSuelo.find(params[:id])
  end

  # POST /color_suelos
  # POST /color_suelos.xml
  def create
    @color_suelo = ColorSuelo.new(params[:color_suelo])

    respond_to do |format|
      if @color_suelo.save
        flash[:notice] = 'ColorSuelo was successfully created.'
        format.html { redirect_to(@color_suelo) }
        format.xml  { render :xml => @color_suelo, :status => :created, :location => @color_suelo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @color_suelo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /color_suelos/1
  # PUT /color_suelos/1.xml
  def update
    @color_suelo = ColorSuelo.find(params[:id])

    respond_to do |format|
      if @color_suelo.update_attributes(params[:color_suelo])
        flash[:notice] = 'ColorSuelo was successfully updated.'
        format.html { redirect_to(@color_suelo) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @color_suelo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /color_suelos/1
  # DELETE /color_suelos/1.xml
  def destroy
    @color_suelo = ColorSuelo.find(params[:id])
    @color_suelo.destroy

    respond_to do |format|
      format.html { redirect_to(color_suelos_url) }
      format.xml  { head :ok }
    end
  end
end
