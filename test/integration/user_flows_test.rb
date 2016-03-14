require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest

  def test_new_visitor_orientation

  end

  def test_user_signup_process
  end

  def test_user_login_and_logout
    go_to_login
    go_to_logout
  end

  def test_authorization_intact
  end

  def test_survey_creation_process
  end

  def test_survey_publish_process
  end

  def test_survey_participation_process
  end

  def test_data_collection_process
  end

  private

     def go_to_login
       get "/login"
       assert_response :success
       assert_template "login/new"
     end

     def go_to_login
       get "/login"
       assert_response :success
       assert_template "login/new"
     end

     def go_to_signup
       get "/signup"
       assert_response :success
       assert_template "signup/index"
     end

     def signup(options)
       post "/signup", options
       assert_response :redirect
       follow_redirect!
       assert_response :success
       assert_template "ledger/index"
     end
 end
