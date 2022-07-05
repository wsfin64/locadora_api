class ContratosController < ApplicationController
  before_action :set_contrato, only: [:show, :update, :destroy]

  # GET /contratos
  def index
    @contratos = Contrato.all

    render json: @contratos
  end

  # GET /contratos/1
  def show
    render json: @contrato
  end

  # POST /contratos
  def create
    @contrato = Contrato.new(contrato_params)
    @contrato.calcular_valor_total

    if @contrato.save
      render json: @contrato, status: :created, location: @contrato
    else
      render json: @contrato.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contratos/1
  def update
    
    if @contrato.update(contrato_params)
      @contrato.registrar_devolucao
      render json: @contrato
    else
      render json: @contrato.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contratos/1
  def destroy
    @contrato.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contrato
      @contrato = Contrato.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contrato_params
      params.require(:contrato).permit(:dataInicio, :dataFim, :valor, :cliente_id, :veiculo_id, :valorTotal)
    end
end
