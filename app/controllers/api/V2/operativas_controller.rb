class Api::V2::OperativasController < ApplicationController
  before_action :set_operativa, only: [:show, :update, :destroy]

  # GET /operativas
  def index
    @operativas = Operativa.all

    render json: @operativas
  end

  # GET /operativas/1
  def show
    render json: @operativa
  end

  # POST /operativas
  def create
    @operativa = Operativa.new(operativa_params)

    if @operativa.save
      render json: @operativa, status: :created
    else
      render json: @operativa.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /operativas/1
  def update
    if @operativa.update(operativa_params)
      render json: @operativa
    else
      render json: @operativa.errors, status: :unprocessable_entity
    end
  end

  # DELETE /operativas/1
  def destroy
    @operativa.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operativa
      @operativa = Operativa.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def operativa_params
      params.require(:operativa).permit(:codigoMalicioso, :copiaSeguridad, :empresa_id)
    end
end
