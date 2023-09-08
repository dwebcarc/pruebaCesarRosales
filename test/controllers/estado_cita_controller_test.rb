require "test_helper"

class EstadoCitaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estado_citum = estado_cita(:one)
  end

  test "should get index" do
    get estado_cita_url
    assert_response :success
  end

  test "should get new" do
    get new_estado_citum_url
    assert_response :success
  end

  test "should create estado_citum" do
    assert_difference("EstadoCitum.count") do
      post estado_cita_url, params: { estado_citum: { nombreEstado: @estado_citum.nombreEstado } }
    end

    assert_redirected_to estado_citum_url(EstadoCitum.last)
  end

  test "should show estado_citum" do
    get estado_citum_url(@estado_citum)
    assert_response :success
  end

  test "should get edit" do
    get edit_estado_citum_url(@estado_citum)
    assert_response :success
  end

  test "should update estado_citum" do
    patch estado_citum_url(@estado_citum), params: { estado_citum: { nombreEstado: @estado_citum.nombreEstado } }
    assert_redirected_to estado_citum_url(@estado_citum)
  end

  test "should destroy estado_citum" do
    assert_difference("EstadoCitum.count", -1) do
      delete estado_citum_url(@estado_citum)
    end

    assert_redirected_to estado_cita_url
  end
end
