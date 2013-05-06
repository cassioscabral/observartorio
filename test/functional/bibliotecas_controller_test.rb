require 'test_helper'

class BibliotecasControllerTest < ActionController::TestCase
  setup do
    @biblioteca = bibliotecas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bibliotecas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create biblioteca" do
    assert_difference('Biblioteca.count') do
      post :create, biblioteca: { categoria: @biblioteca.categoria, path_arquivo: @biblioteca.path_arquivo, titulo: @biblioteca.titulo }
    end

    assert_redirected_to biblioteca_path(assigns(:biblioteca))
  end

  test "should show biblioteca" do
    get :show, id: @biblioteca
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @biblioteca
    assert_response :success
  end

  test "should update biblioteca" do
    put :update, id: @biblioteca, biblioteca: { categoria: @biblioteca.categoria, path_arquivo: @biblioteca.path_arquivo, titulo: @biblioteca.titulo }
    assert_redirected_to biblioteca_path(assigns(:biblioteca))
  end

  test "should destroy biblioteca" do
    assert_difference('Biblioteca.count', -1) do
      delete :destroy, id: @biblioteca
    end

    assert_redirected_to bibliotecas_path
  end
end
