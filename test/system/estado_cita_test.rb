require "application_system_test_case"

class EstadoCitaTest < ApplicationSystemTestCase
  setup do
    @estado_citum = estado_cita(:one)
  end

  test "visiting the index" do
    visit estado_cita_url
    assert_selector "h1", text: "Estado cita"
  end

  test "should create estado citum" do
    visit estado_cita_url
    click_on "New estado citum"

    fill_in "Nombreestado", with: @estado_citum.nombreEstado
    click_on "Create Estado citum"

    assert_text "Estado citum was successfully created"
    click_on "Back"
  end

  test "should update Estado citum" do
    visit estado_citum_url(@estado_citum)
    click_on "Edit this estado citum", match: :first

    fill_in "Nombreestado", with: @estado_citum.nombreEstado
    click_on "Update Estado citum"

    assert_text "Estado citum was successfully updated"
    click_on "Back"
  end

  test "should destroy Estado citum" do
    visit estado_citum_url(@estado_citum)
    click_on "Destroy this estado citum", match: :first

    assert_text "Estado citum was successfully destroyed"
  end
end
