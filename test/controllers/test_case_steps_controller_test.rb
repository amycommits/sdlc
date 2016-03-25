require 'test_helper'

class TestCaseStepsControllerTest < ActionController::TestCase
  setup do
    @test_case_step = test_case_steps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_case_steps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_case_step" do
    assert_difference('TestCaseStep.count') do
      post :create, test_case_step: { description: @test_case_step.description, position: @test_case_step.position, test_case_id: @test_case_step.test_case_id }
    end

    assert_redirected_to test_case_step_path(assigns(:test_case_step))
  end

  test "should show test_case_step" do
    get :show, id: @test_case_step
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_case_step
    assert_response :success
  end

  test "should update test_case_step" do
    patch :update, id: @test_case_step, test_case_step: { description: @test_case_step.description, position: @test_case_step.position, test_case_id: @test_case_step.test_case_id }
    assert_redirected_to test_case_step_path(assigns(:test_case_step))
  end

  test "should destroy test_case_step" do
    assert_difference('TestCaseStep.count', -1) do
      delete :destroy, id: @test_case_step
    end

    assert_redirected_to test_case_steps_path
  end
end
