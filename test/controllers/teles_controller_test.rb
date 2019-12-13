require 'test_helper'

class TelesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tele = teles(:one)
  end

  test "should get index" do
    get teles_url, as: :json
    assert_response :success
  end

  test "should create tele" do
    assert_difference('Tele.count') do
      post teles_url, params: { tele: { confidencialidad: @tele.confidencialidad, controles: @tele.controles, intercambio: @tele.intercambio, mecanismos: @tele.mecanismos, mensajeria: @tele.mensajeria, politicas: @tele.politicas, segregacion: @tele.segregacion } }, as: :json
    end

    assert_response 201
  end

  test "should show tele" do
    get tele_url(@tele), as: :json
    assert_response :success
  end

  test "should update tele" do
    patch tele_url(@tele), params: { tele: { confidencialidad: @tele.confidencialidad, controles: @tele.controles, intercambio: @tele.intercambio, mecanismos: @tele.mecanismos, mensajeria: @tele.mensajeria, politicas: @tele.politicas, segregacion: @tele.segregacion } }, as: :json
    assert_response 200
  end

  test "should destroy tele" do
    assert_difference('Tele.count', -1) do
      delete tele_url(@tele), as: :json
    end

    assert_response 204
  end
end
