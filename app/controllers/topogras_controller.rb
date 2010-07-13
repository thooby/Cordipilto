class TopograsController < ApplicationController
  # GET /topogras
  # GET /topogras.xml
  def index
    @topogras = Topogra.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @topogras }
    end
  end

  # GET /topogras/1
  # GET /topogras/1.xml
  def show
    @topogra = Topogra.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @topogra }
    end
  end

  # GET /topogras/new
  # GET /topogras/new.xml
  def new
    @topogra = Topogra.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @topogra }
    end
  end

  # GET /topogras/1/edit
  def edit
    @topogra = Topogra.find(params[:id])
  end

  # POST /topogras
  # POST /topogras.xml
  def create
    @topogra = Topogra.new(params[:topogra])

    respond_to do |format|
      if @topogra.save
        flash[:notice] = 'Topogra was successfully created.'
        format.html { redirect_to(@topogra) }
        format.xml  { render :xml => @topogra, :status => :created, :location => @topogra }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @topogra.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /topogras/1
  # PUT /topogras/1.xml
  def update
    @topogra = Topogra.find(params[:id])

    respond_to do |format|
      if @topogra.update_attributes(params[:topogra])
        flash[:notice] = 'Topogra was successfully updated.'
        format.html { redirect_to(@topogra) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @topogra.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /topogras/1
  # DELETE /topogras/1.xml
  def destroy
    @topogra = Topogra.find(params[:id])
    @topogra.destroy

    respond_to do |format|
      format.html { redirect_to(topogras_url) }
      format.xml  { head :ok }
    end
  end
end
