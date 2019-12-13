require 'test_helper'

class OperativasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @operativa = operativas(:one)
  end

  test "should get index" do
    get operativas_url, as: :json
    assert_response :success
  end

  test "should create operativa" do
    assert_difference('Operativa.count') do
      post operativas_url, params: { operativa: { codigoMalicioso: @operativa.codigoMalicioso, copiaSeguridad: @operativa.copiaSeguridad } }, as: :json
    end

    assert_response 201
  end

  test "should show operativa" do
    get operativa_url(@operativa), as: :json
    assert_response :success
  end

  test "should update operativa" do
    patch operativa_url(@operativa), params: { operativa: { codigoMalicioso: @operativa.codigoMalicioso, copiaSeguridad: @operativa.copiaSeguridad } }, as: :json
    assert_response 200
  end

  test "should destroy operativa" do
    assert_difference('Operativa.count', -1) do
      delete operativa_url(@operativa), as: :json
    end

    assert_response 204
  end
end
