class FincasController < ApplicationController
  # GET /fincas
  # GET /fincas.xml
  def index
    @fincas = Finca.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fincas }
    end
  end

  # GET /fincas/1
  # GET /fincas/1.xml
  def show
    @finca = Finca.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @finca }
    end
  end

  # GET /fincas/new
  # GET /fincas/new.xml
  def new
    @finca = Finca.new
    @finca.personas.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @finca }
    end
  end

  # GET /fincas/1/edit
  def edit
    @finca = Finca.find(params[:id])
  end

  # POST /fincas
  # POST /fincas.xml
  def create
    puts "XXXXXXXXXXXXXXXXXXX"
    p params[:finca]
    puts "OOOOOOOOOOOOOOOOOOO"
    @finca = Finca.new(params[:finca])
    respond_to do |format|
      if @finca.save
        flash[:notice] = 'Finca was successfully created.'
        format.html { redirect_to(@finca) }
        format.xml  { render :xml => @finca, :status => :created, :location => @finca }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @finca.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /fincas/1
  # PUT /fincas/1.xml
  def update
    params[:finca][:existing_persona_attributes] ||= {}
    puts "*****************"
        puts params
        puts "-----------------"
    @finca = Finca.find(params[:id])

    respond_to do |format|
      if @finca.update_attributes(params[:finca])
        flash[:notice] = 'Finca was successfully updated.'
        format.html { redirect_to(@finca) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @finca.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fincas/1
  # DELETE /fincas/1.xml
  def destroy
    @finca = Finca.find(params[:id])
    @finca.destroy

    respond_to do |format|
      format.html { redirect_to(fincas_url) }
      format.xml  { head :ok }
    end
  end
end
