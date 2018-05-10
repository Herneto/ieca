require 'test_helper'

class DizimosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dizimo = dizimos(:one)
  end

  test "should get index" do
    get dizimos_url
    assert_response :success
  end

  test "should get new" do
    get new_dizimo_url
    assert_response :success
  end

  test "should create dizimo" do
    assert_difference('Dizimo.count') do
      post dizimos_url, params: { dizimo: { abr: @dizimo.abr, ago: @dizimo.ago, ano: @dizimo.ano, des: @dizimo.des, fev: @dizimo.fev, jan: @dizimo.jan, jul: @dizimo.jul, jun: @dizimo.jun, mai: @dizimo.mai, mar: @dizimo.mar, membro_id: @dizimo.membro_id, nov: @dizimo.nov, out: @dizimo.out, set: @dizimo.set } }
    end

    assert_redirected_to dizimo_url(Dizimo.last)
  end

  test "should show dizimo" do
    get dizimo_url(@dizimo)
    assert_response :success
  end

  test "should get edit" do
    get edit_dizimo_url(@dizimo)
    assert_response :success
  end

  test "should update dizimo" do
    patch dizimo_url(@dizimo), params: { dizimo: { abr: @dizimo.abr, ago: @dizimo.ago, ano: @dizimo.ano, des: @dizimo.des, fev: @dizimo.fev, jan: @dizimo.jan, jul: @dizimo.jul, jun: @dizimo.jun, mai: @dizimo.mai, mar: @dizimo.mar, membro_id: @dizimo.membro_id, nov: @dizimo.nov, out: @dizimo.out, set: @dizimo.set } }
    assert_redirected_to dizimo_url(@dizimo)
  end

  test "should destroy dizimo" do
    assert_difference('Dizimo.count', -1) do
      delete dizimo_url(@dizimo)
    end

    assert_redirected_to dizimos_url
  end
end
