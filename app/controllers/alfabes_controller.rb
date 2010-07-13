class AlfabesController < ApplicationController
  # GET /alfabes
  # GET /alfabes.xml
  def index
    @alfabes = Alfabe.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @alfabes }
    end
  end

  # GET /alfabes/1
  # GET /alfabes/1.xml
  def show
    @alfabe = Alfabe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @alfabe }
    end
  end

  # GET /alfabes/new
  # GET /alfabes/new.xml
  def new
    @alfabe = Alfabe.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @alfabe }
    end
  end

  # GET /alfabes/1/edit
  def edit
    @alfabe = Alfabe.find(params[:id])
  end

  # POST /alfabes
  # POST /alfabes.xml
  def create
    @alfabe = Alfabe.new(params[:alfabe])

    respond_to do |format|
      if @alfabe.save
        flash[:notice] = 'Alfabe was successfully created.'
        format.html { redirect_to(@alfabe) }
        format.xml  { render :xml => @alfabe, :status => :created, :location => @alfabe }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @alfabe.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /alfabes/1
  # PUT /alfabes/1.xml
  def update
    @alfabe = Alfabe.find(params[:id])

    respond_to do |format|
      if @alfabe.update_attributes(params[:alfabe])
        flash[:notice] = 'Alfabe was successfully updated.'
        format.html { redirect_to(@alfabe) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @alfabe.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /alfabes/1
  # DELETE /alfabes/1.xml
  def destroy
    @alfabe = Alfabe.find(params[:id])
    @alfabe.destroy

    respond_to do |format|
      format.html { redirect_to(alfabes_url) }
      format.xml  { head :ok }
    end
  end
end
