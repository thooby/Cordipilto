class AdquisController < ApplicationController
  # GET /adquis
  # GET /adquis.xml
  def index
    @adquis = Adqui.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @adquis }
    end
  end

  # GET /adquis/1
  # GET /adquis/1.xml
  def show
    @adqui = Adqui.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @adqui }
    end
  end

  # GET /adquis/new
  # GET /adquis/new.xml
  def new
    @adqui = Adqui.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @adqui }
    end
  end

  # GET /adquis/1/edit
  def edit
    @adqui = Adqui.find(params[:id])
  end

  # POST /adquis
  # POST /adquis.xml
  def create
    @adqui = Adqui.new(params[:adqui])

    respond_to do |format|
      if @adqui.save
        flash[:notice] = 'Adqui was successfully created.'
        format.html { redirect_to(@adqui) }
        format.xml  { render :xml => @adqui, :status => :created, :location => @adqui }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @adqui.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /adquis/1
  # PUT /adquis/1.xml
  def update
    @adqui = Adqui.find(params[:id])

    respond_to do |format|
      if @adqui.update_attributes(params[:adqui])
        flash[:notice] = 'Adqui was successfully updated.'
        format.html { redirect_to(@adqui) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @adqui.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /adquis/1
  # DELETE /adquis/1.xml
  def destroy
    @adqui = Adqui.find(params[:id])
    @adqui.destroy

    respond_to do |format|
      format.html { redirect_to(adquis_url) }
      format.xml  { head :ok }
    end
  end
end
