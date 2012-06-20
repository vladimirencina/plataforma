class AdministrativosController < ApplicationController
  # GET /administrativos
  # GET /administrativos.xml
  def index
    @administrativos = Administrativo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @administrativos }
    end
  end

  # GET /administrativos/1
  # GET /administrativos/1.xml
  def show
    @administrativo = Administrativo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @administrativo }
    end
  end

  # GET /administrativos/new
  # GET /administrativos/new.xml
  def new
    @administrativo = Administrativo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @administrativo }
    end
  end

  # GET /administrativos/1/edit
  def edit
    @administrativo = Administrativo.find(params[:id])
  end

  # POST /administrativos
  # POST /administrativos.xml
  def create
    @administrativo = Administrativo.new(params[:administrativo])

    respond_to do |format|
      if @administrativo.save
        format.html { redirect_to(@administrativo, :notice => 'Administrativo was successfully created.') }
        format.xml  { render :xml => @administrativo, :status => :created, :location => @administrativo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @administrativo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /administrativos/1
  # PUT /administrativos/1.xml
  def update
    @administrativo = Administrativo.find(params[:id])

    respond_to do |format|
      if @administrativo.update_attributes(params[:administrativo])
        format.html { redirect_to(@administrativo, :notice => 'Administrativo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @administrativo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /administrativos/1
  # DELETE /administrativos/1.xml
  def destroy
    @administrativo = Administrativo.find(params[:id])
    @administrativo.destroy

    respond_to do |format|
      format.html { redirect_to(administrativos_url) }
      format.xml  { head :ok }
    end
  end
end
