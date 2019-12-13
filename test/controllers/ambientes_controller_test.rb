require 'test_helper'

class AmbientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ambiente = ambientes(:one)
  end

  test "should get index" do
    get ambientes_url, as: :json
    assert_response :success
  end

  test "should create ambiente" do
    assert_difference('Ambiente.count') do
      post ambientes_url, params: { ambiente: { accesoPublico: @ambiente.accesoPublico, areasSeguras: @ambiente.areasSeguras, cableado: @ambiente.cableado, controles: @ambiente.controles, emplazamiento: @ambiente.emplazamiento, equipo: @ambiente.equipo, instalaciones: @ambiente.instalaciones, mantenimiento: @ambiente.mantenimiento, perimetros: @ambiente.perimetros, politica: @ambiente.politica, proteccion: @ambiente.proteccion, reutilizacion: @ambiente.reutilizacion, salidaActivos: @ambiente.salidaActivos, seguridad: @ambiente.seguridad, seguridadEquipos: @ambiente.seguridadEquipos } }, as: :json
    end

    assert_response 201
  end

  test "should show ambiente" do
    get ambiente_url(@ambiente), as: :json
    assert_response :success
  end

  test "should update ambiente" do
    patch ambiente_url(@ambiente), params: { ambiente: { accesoPublico: @ambiente.accesoPublico, areasSeguras: @ambiente.areasSeguras, cableado: @ambiente.cableado, controles: @ambiente.controles, emplazamiento: @ambiente.emplazamiento, equipo: @ambiente.equipo, instalaciones: @ambiente.instalaciones, mantenimiento: @ambiente.mantenimiento, perimetros: @ambiente.perimetros, politica: @ambiente.politica, proteccion: @ambiente.proteccion, reutilizacion: @ambiente.reutilizacion, salidaActivos: @ambiente.salidaActivos, seguridad: @ambiente.seguridad, seguridadEquipos: @ambiente.seguridadEquipos } }, as: :json
    assert_response 200
  end

  test "should destroy ambiente" do
    assert_difference('Ambiente.count', -1) do
      delete ambiente_url(@ambiente), as: :json
    end

    assert_response 204
  end
end
