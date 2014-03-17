require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
    @update = {
      title:        'Shrunken Cat Head',
      description:  'Cursed shrunken cat head.',
      image_url:    'cat_head.gif',
      price:        19.95
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)

    assert_select 'h1', 'Listing Products'
    assert_select '#columns #side a', minimum: 4
    assert_select '#main', 1
    assert_select 'dt', 'Cat Penis'
    assert_select 'dd', 'Cats need a penis. Introducting Cat dicks!'
    assert_select 'table .list_line_odd', minimum: 1
    assert_select '.list_actions', minimum: 1
    assert_select 'a', 'New Product
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: @update
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: @update
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end

  test
end
