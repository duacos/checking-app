require 'test_helper'

class AccesosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acceso = accesos(:one)
  end

  test "should get index" do
    get accesos_url, as: :json
    assert_response :success
  end

  test "should create acceso" do
    assert_difference('Acceso.count') do
      post accesos_url, params: { acceso: { accesoCodigo: @acceso.accesoCodigo, controlAcceso: @acceso.controlAcceso, gestionAltasBajas: @acceso.gestionAltasBajas, gestionDerechosEspeciales: @acceso.gestionDerechosEspeciales, gestionDerechosUsuarios: @acceso.gestionDerechosUsuarios, gestionPassword: @acceso.gestionPassword, politicaControl: @acceso.politicaControl, procedimientos: @acceso.procedimientos, restriccion: @acceso.restriccion, retirada: @acceso.retirada, revisionDerechos: @acceso.revisionDerechos, uso: @acceso.uso } }, as: :json
    end

    assert_response 201
  end

  test "should show acceso" do
    get acceso_url(@acceso), as: :json
    assert_response :success
  end

  test "should update acceso" do
    patch acceso_url(@acceso), params: { acceso: { accesoCodigo: @acceso.accesoCodigo, controlAcceso: @acceso.controlAcceso, gestionAltasBajas: @acceso.gestionAltasBajas, gestionDerechosEspeciales: @acceso.gestionDerechosEspeciales, gestionDerechosUsuarios: @acceso.gestionDerechosUsuarios, gestionPassword: @acceso.gestionPassword, politicaControl: @acceso.politicaControl, procedimientos: @acceso.procedimientos, restriccion: @acceso.restriccion, retirada: @acceso.retirada, revisionDerechos: @acceso.revisionDerechos, uso: @acceso.uso } }, as: :json
    assert_response 200
  end

  test "should destroy acceso" do
    assert_difference('Acceso.count', -1) do
      delete acceso_url(@acceso), as: :json
    end

    assert_response 204
  end
end
