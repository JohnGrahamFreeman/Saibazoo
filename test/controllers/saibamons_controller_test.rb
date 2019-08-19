require 'test_helper'

class SaibamonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @saibamon = saibamons(:one)
  end

  test "should get index" do
    get saibamons_url
    assert_response :success
  end

  test "should get new" do
    get new_saibamon_url
    assert_response :success
  end

  test "should create saibamon" do
    assert_difference('Saibamon.count') do
      post saibamons_url, params: { saibamon: { birthday: @saibamon.birthday, gender: @saibamon.gender, name: @saibamon.name, owner: @saibamon.owner, species: @saibamon.species } }
    end

    assert_redirected_to saibamon_url(Saibamon.last)
  end

  test "should show saibamon" do
    get saibamon_url(@saibamon)
    assert_response :success
  end

  test "should get edit" do
    get edit_saibamon_url(@saibamon)
    assert_response :success
  end

  test "should update saibamon" do
    patch saibamon_url(@saibamon), params: { saibamon: { birthday: @saibamon.birthday, gender: @saibamon.gender, name: @saibamon.name, owner: @saibamon.owner, species: @saibamon.species } }
    assert_redirected_to saibamon_url(@saibamon)
  end

  test "should destroy saibamon" do
    assert_difference('Saibamon.count', -1) do
      delete saibamon_url(@saibamon)
    end

    assert_redirected_to saibamons_url
  end
end
