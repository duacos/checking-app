require 'test_helper'

class ActivosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activo = activos(:one)
  end

  test "should get index" do
    get activos_url, as: :json
    assert_response :success
  end

  test "should create activo" do
    assert_difference('Activo.count') do
      post activos_url, params: { activo: { devolucion: @activo.devolucion, directrices: @activo.directrices, eliminacion: @activo.eliminacion, empresa_id: @activo.empresa_id, etiquetado: @activo.etiquetado, gestion: @activo.gestion, inventario: @activo.inventario, propiedad: @activo.propiedad, soportes: @activo.soportes, uso: @activo.uso } }, as: :json
    end

    assert_response 201
  end

  test "should show activo" do
    get activo_url(@activo), as: :json
    assert_response :success
  end

  test "should update activo" do
    patch activo_url(@activo), params: { activo: { devolucion: @activo.devolucion, directrices: @activo.directrices, eliminacion: @activo.eliminacion, empresa_id: @activo.empresa_id, etiquetado: @activo.etiquetado, gestion: @activo.gestion, inventario: @activo.inventario, propiedad: @activo.propiedad, soportes: @activo.soportes, uso: @activo.uso } }, as: :json
    assert_response 200
  end

  test "should destroy activo" do
    assert_difference('Activo.count', -1) do
      delete activo_url(@activo), as: :json
    end

    assert_response 204
  end
end
