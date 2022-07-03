require "test_helper"

class VeiculosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @veiculo = veiculos(:one)
  end

  test "should get index" do
    get veiculos_url, as: :json
    assert_response :success
  end

  test "should create veiculo" do
    assert_difference('Veiculo.count') do
      post veiculos_url, params: { veiculo: { ano: @veiculo.ano, diaria: @veiculo.diaria, fabricante: @veiculo.fabricante, foto: @veiculo.foto, modelo: @veiculo.modelo, motor: @veiculo.motor, placa: @veiculo.placa } }, as: :json
    end

    assert_response 201
  end

  test "should show veiculo" do
    get veiculo_url(@veiculo), as: :json
    assert_response :success
  end

  test "should update veiculo" do
    patch veiculo_url(@veiculo), params: { veiculo: { ano: @veiculo.ano, diaria: @veiculo.diaria, fabricante: @veiculo.fabricante, foto: @veiculo.foto, modelo: @veiculo.modelo, motor: @veiculo.motor, placa: @veiculo.placa } }, as: :json
    assert_response 200
  end

  test "should destroy veiculo" do
    assert_difference('Veiculo.count', -1) do
      delete veiculo_url(@veiculo), as: :json
    end

    assert_response 204
  end
end
