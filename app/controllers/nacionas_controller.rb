class NacionasController < ApplicationController
  # GET /nacionas
  # GET /nacionas.xml
  def index
    @nacionas = Naciona.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @nacionas }
    end
  end

  # GET /nacionas/1
  # GET /nacionas/1.xml
  def show
    @naciona = Naciona.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @naciona }
    end
  end

  # GET /nacionas/new
  # GET /nacionas/new.xml
  def new
    @naciona = Naciona.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @naciona }
    end
  end

  # GET /nacionas/1/edit
  def edit
    @naciona = Naciona.find(params[:id])
  end

  # POST /nacionas
  # POST /nacionas.xml
  def create
    @naciona = Naciona.new(params[:naciona])

    respond_to do |format|
      if @naciona.save
        flash[:notice] = 'Naciona was successfully created.'
        format.html { redirect_to(@naciona) }
        format.xml  { render :xml => @naciona, :status => :created, :location => @naciona }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @naciona.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /nacionas/1
  # PUT /nacionas/1.xml
  def update
    @naciona = Naciona.find(params[:id])

    respond_to do |format|
      if @naciona.update_attributes(params[:naciona])
        flash[:notice] = 'Naciona was successfully updated.'
        format.html { redirect_to(@naciona) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @naciona.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /nacionas/1
  # DELETE /nacionas/1.xml
  def destroy
    @naciona = Naciona.find(params[:id])
    @naciona.destroy

    respond_to do |format|
      format.html { redirect_to(nacionas_url) }
      format.xml  { head :ok }
    end
  end
end
