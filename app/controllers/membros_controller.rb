class MembrosController < ApplicationController
  before_action :set_membro, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!


  # GET /membros
  # GET /membros.json
  def index
    if params[:search]
      respond_to do |format|
        @membros = Membro.where(["nome like ?", "%#{params[:search]}%"])
        @quantidade = Membro.count
        @membro = Membro.new
        format.html
        format.js
      end
    else
      @membros = Membro.limit(2)
      @quantidade = Membro.count
      @membro = Membro.new
    end

  end

  def mais
    respond_to do |format|
      format.js
    end
  end

  # GET /membros/1
  # GET /membros/1.json
  def show
    @dizimos = Dizimo.demembro(@membro.id)
    @dizimo = Dizimo.new
    @dizimo.membro_id = @membro.id
  end

  # GET /membros/new
  def new
    @membro = Membro.new
  end

  # GET /membros/1/edit
  def edit
  end

  # POST /membros
  # POST /membros.json
  def create
    @membro = Membro.new(membro_params)

    respond_to do |format|
      if @membro.save
        format.html { redirect_to @membro, notice: 'Membro was successfully created.' }
        format.json { render :show, status: :created, location: @membro }
        format.js
      else
        format.html { render :new }
        format.json { render json: @membro.errors, status: :unprocessable_entity }
        format.js        
      end
    end
  end

  # PATCH/PUT /membros/1
  # PATCH/PUT /membros/1.json
  def update
    @dizimos = Dizimo.demembro(@membro.id)
    @dizimo = Dizimo.new
    @dizimo.membro_id = @membro.id
    respond_to do |format|
      if @membro.update(membro_params)
        format.html { redirect_to @membro, notice: 'Membro was successfully updated.' }
        format.json { render :show, status: :ok, location: @membro }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @membro.errors, status: :unprocessable_entity }
        format.js        
      end
    end
  end

  # DELETE /membros/1
  # DELETE /membros/1.json
  def destroy
    #@membro.apagado = "t"
    @membro.destroy
    respond_to do |format|
      format.html { redirect_to membros_url, notice: 'Membro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_membro
      @membro = Membro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def membro_params
      params.require(:membro).permit(:nome, :pai, :mae, :residencia, :nacionalidade, :naturalidade, :provincia, :nascimento, :sexo, :estado_civil, :peso, :altura, :data_casamento, :agregado, :localbaptismo, :data_batismo, :localconfirmacao, :data_confirmacao, :categoriareligiosa, :cargolideranca, :sociedade, :bi, :casado)
    end
end
