class BibliotecasController < ApplicationController

  before_filter :authenticate_admin_user!, :except => [:show]

  # GET /bibliotecas
  # GET /bibliotecas.json
  def index
    @bibliotecas = Biblioteca.all

    respond_to do |format|
      format.html # index11.html.erb
      format.json { render json: @bibliotecas }
    end
  end

  # GET /bibliotecas/1
  # GET /bibliotecas/1.json
  def show
    @biblioteca = Biblioteca.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @biblioteca }
    end
  end

  # GET /bibliotecas/new
  # GET /bibliotecas/new.json
  def new
    @biblioteca = Biblioteca.new

    1.times { @biblioteca.assets.build }
    
  end

  # GET /bibliotecas/1/edit
  def edit
    @biblioteca = Biblioteca.find(params[:id])
    1.times { @biblioteca.assets.build }
  end

  # POST /bibliotecas
  # POST /bibliotecas.json
  def create
    @biblioteca = Biblioteca.new(params[:biblioteca])

    respond_to do |format|
      if @biblioteca.save
        format.html { redirect_to @biblioteca, notice: 'Biblioteca was successfully created.' }
        format.json { render json: @biblioteca, status: :created, location: @biblioteca }
      else
        format.html { render action: "new" }
        format.json { render json: @biblioteca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bibliotecas/1
  # PUT /bibliotecas/1.json
  def update
    @biblioteca = Biblioteca.find(params[:id])

    respond_to do |format|
      if @biblioteca.update_attributes(params[:biblioteca])
        format.html { redirect_to @biblioteca, notice: 'Biblioteca was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @biblioteca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bibliotecas/1
  # DELETE /bibliotecas/1.json
  def destroy
    @biblioteca = Biblioteca.find(params[:id])
    @biblioteca.destroy

    respond_to do |format|
      format.html { redirect_to bibliotecas_url }
      format.json { head :no_content }
    end
  end
end
