class Api::V2::EmpresasController < ApplicationController
  before_action :set_empresa, only: [:show, :update, :destroy]
  #skip_before_action :verify_authenticity_token, :only => [:show, :update, :destroy], raise: false

  # GET /empresas
  def index
    @empresas = Empresa.all
    
    render json: @empresas, include: [:politica, :activo, :acceso, :ambiente, :operativa, :tele, :desarrollo]
  end

  # GET /empresas/1
  def show
    render json: @empresa, include: [:politica, :activo, :acceso, :ambiente, :operativa, :tele, :desarrollo]
  end

  # POST /empresas
  def create
    @empresa = Empresa.new(empresa_params)

    if @empresa.save
      render json: @empresa, status: :created
    else
      render json: @empresa.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /empresas/1
  def update
    if @empresa.update(empresa_params)
      render json: @empresa
    else
      render json: @empresa.errors, status: :unprocessable_entity
    end
  end

  # DELETE /empresas/1
  def destroy
    @empresa.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empresa
      @empresa = Empresa.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def empresa_params
      params.require(:empresa).permit(:name, :description)
    end
end
