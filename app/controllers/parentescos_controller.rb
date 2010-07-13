class ParentescosController < ApplicationController
  # GET /parentescos
  # GET /parentescos.xml
  def index
    @parentescos = Parentesco.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @parentescos }
    end
  end

  # GET /parentescos/1
  # GET /parentescos/1.xml
  def show
    @parentesco = Parentesco.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @parentesco }
    end
  end

  # GET /parentescos/new
  # GET /parentescos/new.xml
  def new
    @parentesco = Parentesco.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @parentesco }
    end
  end

  # GET /parentescos/1/edit
  def edit
    @parentesco = Parentesco.find(params[:id])
  end

  # POST /parentescos
  # POST /parentescos.xml
  def create
    @parentesco = Parentesco.new(params[:parentesco])

    respond_to do |format|
      if @parentesco.save
        flash[:notice] = 'Parentesco was successfully created.'
        format.html { redirect_to(@parentesco) }
        format.xml  { render :xml => @parentesco, :status => :created, :location => @parentesco }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @parentesco.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /parentescos/1
  # PUT /parentescos/1.xml
  def update
    @parentesco = Parentesco.find(params[:id])

    respond_to do |format|
      if @parentesco.update_attributes(params[:parentesco])
        flash[:notice] = 'Parentesco was successfully updated.'
        format.html { redirect_to(@parentesco) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @parentesco.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /parentescos/1
  # DELETE /parentescos/1.xml
  def destroy
    @parentesco = Parentesco.find(params[:id])
    @parentesco.destroy

    respond_to do |format|
      format.html { redirect_to(parentescos_url) }
      format.xml  { head :ok }
    end
  end
end
