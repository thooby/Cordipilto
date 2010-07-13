class ComunidadesController < ApplicationController
  # GET /comunidades
  # GET /comunidades.xml
  def index
    @comunidades = Comunidade.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @comunidades }
    end
  end

  # GET /comunidades/1
  # GET /comunidades/1.xml
  def show
    @comunidade = Comunidade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @comunidade }
    end
  end

  # GET /comunidades/new
  # GET /comunidades/new.xml
  def new
    @comunidade = Comunidade.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @comunidade }
    end
  end

  # GET /comunidades/1/edit
  def edit
    @comunidade = Comunidade.find(params[:id])
  end

  # POST /comunidades
  # POST /comunidades.xml
  def create
    @comunidade = Comunidade.new(params[:comunidade])

    respond_to do |format|
      if @comunidade.save
        flash[:notice] = 'Comunidade was successfully created.'
        format.html { redirect_to(@comunidade) }
        format.xml  { render :xml => @comunidade, :status => :created, :location => @comunidade }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @comunidade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /comunidades/1
  # PUT /comunidades/1.xml
  def update
    @comunidade = Comunidade.find(params[:id])

    respond_to do |format|
      if @comunidade.update_attributes(params[:comunidade])
        flash[:notice] = 'Comunidade was successfully updated.'
        format.html { redirect_to(@comunidade) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @comunidade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /comunidades/1
  # DELETE /comunidades/1.xml
  def destroy
    @comunidade = Comunidade.find(params[:id])
    @comunidade.destroy

    respond_to do |format|
      format.html { redirect_to(comunidades_url) }
      format.xml  { head :ok }
    end
  end
end
