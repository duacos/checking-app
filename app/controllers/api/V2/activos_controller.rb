class Api::V2::ActivosController < ApplicationController
  before_action :set_activo, only: [:show, :update, :destroy]

  # GET /activos
  def index
    @activos = Activo.all

    render json: @activos
  end

  # GET /activos/1
  def show
    render json: @activo
  end

  # POST /activos
  def create
    @activo = Activo.new(activo_params)

    if @activo.save
      render json: @activo, status: :created  
    else
      render json: @activo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /activos/1
  def update
    if @activo.update(activo_params)
      render json: @activo
    else
      render json: @activo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /activos/1
  def destroy
    @activo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activo
      @activo = Activo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def activo_params
      params.require(:activo).permit(:inventario, :propiedad, :uso, :devolucion, :directrices, :etiquetado, :gestion, :eliminacion, :soportes, :empresa_id)
    end
end
