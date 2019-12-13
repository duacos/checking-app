class Api::V2::AmbientesController < ApplicationController
  before_action :set_ambiente, only: [:show, :update, :destroy]

  # GET /ambientes
  def index
    @ambientes = Ambiente.all

    render json: @ambientes
  end

  # GET /ambientes/1
  def show
    render json: @ambiente
  end

  # POST /ambientes
  def create
    @ambiente = Ambiente.new(ambiente_params)

    if @ambiente.save
      render json: @ambiente, status: :created
    else
      render json: @ambiente.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ambientes/1
  def update
    if @ambiente.update(ambiente_params)
      render json: @ambiente
    else
      render json: @ambiente.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ambientes/1
  def destroy
    @ambiente.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ambiente
      @ambiente = Ambiente.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ambiente_params
      params.require(:ambiente).permit(
        :perimetros, 
        :controles, 
        :seguridad, 
        :proteccion, 
        :areasSeguras, 
        :accesoPublico, 
        :emplazamiento, 
        :instalaciones, 
        :cableado, 
        :mantenimiento, 
        :salidaActivos, 
        :seguridadEquipos, 
        :reutilizacion, 
        :equipo,
        :politica, :empresa_id)
    end
end
