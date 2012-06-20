class BodequerosController < ApplicationController
  # GET /bodequeros
  # GET /bodequeros.xml
  def index
    @bodequeros = Bodequero.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bodequeros }
    end
  end

  # GET /bodequeros/1
  # GET /bodequeros/1.xml
  def show
    @bodequero = Bodequero.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bodequero }
    end
  end

  # GET /bodequeros/new
  # GET /bodequeros/new.xml
  def new
    @bodequero = Bodequero.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bodequero }
    end
  end

  # GET /bodequeros/1/edit
  def edit
    @bodequero = Bodequero.find(params[:id])
  end

  # POST /bodequeros
  # POST /bodequeros.xml
  def create
    @bodequero = Bodequero.new(params[:bodequero])

    respond_to do |format|
      if @bodequero.save
        format.html { redirect_to(@bodequero, :notice => 'Bodequero was successfully created.') }
        format.xml  { render :xml => @bodequero, :status => :created, :location => @bodequero }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bodequero.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bodequeros/1
  # PUT /bodequeros/1.xml
  def update
    @bodequero = Bodequero.find(params[:id])

    respond_to do |format|
      if @bodequero.update_attributes(params[:bodequero])
        format.html { redirect_to(@bodequero, :notice => 'Bodequero was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bodequero.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bodequeros/1
  # DELETE /bodequeros/1.xml
  def destroy
    @bodequero = Bodequero.find(params[:id])
    @bodequero.destroy

    respond_to do |format|
      format.html { redirect_to(bodequeros_url) }
      format.xml  { head :ok }
    end
  end
end
