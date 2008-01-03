require File.dirname(__FILE__) + '/../test_helper'

class ParticipationsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:participations)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_participation
    assert_difference('Participation.count') do
      post :create, :participation => { }
    end

    assert_redirected_to participation_path(assigns(:participation))
  end

  def test_should_show_participation
    get :show, :id => participations(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => participations(:one).id
    assert_response :success
  end

  def test_should_update_participation
    put :update, :id => participations(:one).id, :participation => { }
    assert_redirected_to participation_path(assigns(:participation))
  end

  def test_should_destroy_participation
    assert_difference('Participation.count', -1) do
      delete :destroy, :id => participations(:one).id
    end

    assert_redirected_to participations_path
  end
end
