require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#columns #side a', minimum: 4
    assert_select '#main .entry', 3
    assert_select 'h3', 'Cat Penis'
    assert_select '.price', /\$[,\d]+\.\d\d/
  end

  test "should display the current date" do
    get :index
    time = Time.new.strftime("%m-%d-%y")
    assert_select '.time', time
  end

  test "should initialize the session counter as 0" do
    get :index
    assert_select ".counter", 0
  end

end
