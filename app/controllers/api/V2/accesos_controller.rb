class Api::V2::AccesosController < ApplicationController
  before_action :set_acceso, only: [:show, :update, :destroy]

  # GET /accesos
  def index
    @accesos = Acceso.all

    render json: @accesos
  end

  # GET /accesos/1
  def show
    render json: @acceso
  end

  # POST /accesos
  def create
    @acceso = Acceso.new(acceso_params)

    if @acceso.save
      render json: @acceso, status: :created
    else
      render json: @acceso.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /accesos/1
  def update
    if @acceso.update(acceso_params)
      render json: @acceso
    else
      render json: @acceso.errors, status: :unprocessable_entity
    end
  end

  # DELETE /accesos/1
  def destroy
    @acceso.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acceso
      @acceso = Acceso.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def acceso_params
      params.require(:acceso).permit(:politicaControl, :controlAcceso, :gestionAltasBajas, :gestionDerechosUsuarios, :gestionDerechosEspeciales, :revisionDerechos, :retirada, :restriccion, :procedimientos, :gestionPassword, :uso, :accesoCodigo, :empresa_id)
    end
end
