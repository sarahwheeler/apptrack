require 'test_helper'

class JobAppsControllerTest < ActionController::TestCase
  setup do
    @job_app = job_apps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_apps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_app" do
    assert_difference('JobApp.count') do
      post :create, job_app: { date_applied: @job_app.date_applied, date_saved: @job_app.date_saved, link: @job_app.link }
    end

    assert_redirected_to job_app_path(assigns(:job_app))
  end

  test "should show job_app" do
    get :show, id: @job_app
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job_app
    assert_response :success
  end

  test "should update job_app" do
    patch :update, id: @job_app, job_app: { date_applied: @job_app.date_applied, date_saved: @job_app.date_saved, link: @job_app.link }
    assert_redirected_to job_app_path(assigns(:job_app))
  end

  test "should destroy job_app" do
    assert_difference('JobApp.count', -1) do
      delete :destroy, id: @job_app
    end

    assert_redirected_to job_apps_path
  end
end
