require 'test_helper'

class AlugaJogosControllerTest < ActionController::TestCase
  setup do
    @aluga_jogo = aluga_jogos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aluga_jogos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aluga_jogo" do
    assert_difference('AlugaJogo.count') do
      post :create, aluga_jogo: { data_alugel: @aluga_jogo.data_alugel, id_cliente: @aluga_jogo.id_cliente, id_jogo: @aluga_jogo.id_jogo, valor: @aluga_jogo.valor }
    end

    assert_redirected_to aluga_jogo_path(assigns(:aluga_jogo))
  end

  test "should show aluga_jogo" do
    get :show, id: @aluga_jogo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aluga_jogo
    assert_response :success
  end

  test "should update aluga_jogo" do
    patch :update, id: @aluga_jogo, aluga_jogo: { data_alugel: @aluga_jogo.data_alugel, id_cliente: @aluga_jogo.id_cliente, id_jogo: @aluga_jogo.id_jogo, valor: @aluga_jogo.valor }
    assert_redirected_to aluga_jogo_path(assigns(:aluga_jogo))
  end

  test "should destroy aluga_jogo" do
    assert_difference('AlugaJogo.count', -1) do
      delete :destroy, id: @aluga_jogo
    end

    assert_redirected_to aluga_jogos_path
  end
end
