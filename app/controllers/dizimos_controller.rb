class DizimosController < ApplicationController
  before_action :set_dizimo, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!

  # GET /dizimos
  # GET /dizimos.json
  def index
    @dizimos = Dizimo.all
  end

  # GET /dizimos/1
  # GET /dizimos/1.json
  def show
  end

  # GET /dizimos/new
  def new
    @dizimo = Dizimo.new
  end

  # GET /dizimos/1/edit
  def edit
  end

  # POST /dizimos
  # POST /dizimos.json
  def create
    @dizimo = Dizimo.new(dizimo_params)

    respond_to do |format|
      if @dizimo.save
        format.html { redirect_to @dizimo, notice: 'Dizimo was successfully created.' }
        format.json { render :show, status: :created, location: @dizimo }
        format.js 
      else
        format.html { render :new }
        format.json { render json: @dizimo.errors, status: :unprocessable_entity }
        format.js 
      end
    end
  end

  # PATCH/PUT /dizimos/1
  # PATCH/PUT /dizimos/1.json
  def update
    respond_to do |format|
      if @dizimo.update(dizimo_params)
        format.html { redirect_to @dizimo, notice: 'Dizimo was successfully updated.' }
        format.json { render :show, status: :ok, location: @dizimo }
        format.js 
      else
        format.html { render :edit }
        format.json { render json: @dizimo.errors, status: :unprocessable_entity }
        format.js 
      end
    end
  end

  # DELETE /dizimos/1
  # DELETE /dizimos/1.json
  def destroy
    @dizimo.destroy
    respond_to do |format|
      format.html { redirect_to dizimos_url, notice: 'Dizimo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dizimo
      @dizimo = Dizimo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dizimo_params
      params.require(:dizimo).permit(:ano, :jan, :fev, :mar, :abr, :mai, :jun, :jul, :ago, :set, :out, :nov, :des, :membro_id)
    end
end
