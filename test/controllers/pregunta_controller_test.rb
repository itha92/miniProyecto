require 'test_helper'

class PreguntaControllerTest < ActionController::TestCase
  setup do
    @preguntum = pregunta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pregunta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create preguntum" do
    assert_difference('Preguntum.count') do
      post :create, preguntum: { answer: @preguntum.answer, clue1: @preguntum.clue1, clue2: @preguntum.clue2, fake_answer1: @preguntum.fake_answer1, fake_answer2: @preguntum.fake_answer2, fake_answer3: @preguntum.fake_answer3, question: @preguntum.question }
    end

    assert_redirected_to preguntum_path(assigns(:preguntum))
  end

  test "should show preguntum" do
    get :show, id: @preguntum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @preguntum
    assert_response :success
  end

  test "should update preguntum" do
    patch :update, id: @preguntum, preguntum: { answer: @preguntum.answer, clue1: @preguntum.clue1, clue2: @preguntum.clue2, fake_answer1: @preguntum.fake_answer1, fake_answer2: @preguntum.fake_answer2, fake_answer3: @preguntum.fake_answer3, question: @preguntum.question }
    assert_redirected_to preguntum_path(assigns(:preguntum))
  end

  test "should destroy preguntum" do
    assert_difference('Preguntum.count', -1) do
      delete :destroy, id: @preguntum
    end

    assert_redirected_to pregunta_path
  end
end
