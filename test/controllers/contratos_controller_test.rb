require "test_helper"

class ContratosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contrato = contratos(:one)
  end

  test "should get index" do
    get contratos_url, as: :json
    assert_response :success
  end

  test "should create contrato" do
    assert_difference('Contrato.count') do
      post contratos_url, params: { contrato: { cliente_id: @contrato.cliente_id, dataFim: @contrato.dataFim, dataInicio: @contrato.dataInicio, valor: @contrato.valor, veiculo_id: @contrato.veiculo_id } }, as: :json
    end

    assert_response 201
  end

  test "should show contrato" do
    get contrato_url(@contrato), as: :json
    assert_response :success
  end

  test "should update contrato" do
    patch contrato_url(@contrato), params: { contrato: { cliente_id: @contrato.cliente_id, dataFim: @contrato.dataFim, dataInicio: @contrato.dataInicio, valor: @contrato.valor, veiculo_id: @contrato.veiculo_id } }, as: :json
    assert_response 200
  end

  test "should destroy contrato" do
    assert_difference('Contrato.count', -1) do
      delete contrato_url(@contrato), as: :json
    end

    assert_response 204
  end
end
