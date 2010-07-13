class AguasController < ApplicationController
  # GET /aguas
  # GET /aguas.xml
  def index
    @aguas = Agua.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @aguas }
    end
  end

  # GET /aguas/1
  # GET /aguas/1.xml
  def show
    @agua = Agua.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @agua }
    end
  end

  # GET /aguas/new
  # GET /aguas/new.xml
  def new
    @agua = Agua.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @agua }
    end
  end

  # GET /aguas/1/edit
  def edit
    @agua = Agua.find(params[:id])
  end

  # POST /aguas
  # POST /aguas.xml
  def create
    @agua = Agua.new(params[:agua])

    respond_to do |format|
      if @agua.save
        flash[:notice] = 'Agua was successfully created.'
        format.html { redirect_to(@agua) }
        format.xml  { render :xml => @agua, :status => :created, :location => @agua }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @agua.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /aguas/1
  # PUT /aguas/1.xml
  def update
    @agua = Agua.find(params[:id])

    respond_to do |format|
      if @agua.update_attributes(params[:agua])
        flash[:notice] = 'Agua was successfully updated.'
        format.html { redirect_to(@agua) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @agua.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /aguas/1
  # DELETE /aguas/1.xml
  def destroy
    @agua = Agua.find(params[:id])
    @agua.destroy

    respond_to do |format|
      format.html { redirect_to(aguas_url) }
      format.xml  { head :ok }
    end
  end
end
