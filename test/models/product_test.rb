require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "product assertions" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:image_url].any?
    assert product.errors[:price].any?
  end

  test "product price must be positive" do
    product = Product.new(title:        "The Book Title",
                          description:  "test",
                          image_url:    "test.jpg")
    product.price = -1
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"], product.errors[:price]

    product.price = 0
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"], product.errors[:price]

    product.price = 1
    assert product.valid?
  end

  test "image_url must be of type .jpg, .gif, or .png" do
    def new_product(image_url)
      Product.new(title:        "The Book Title",
                  description:  "test",
                  image_url:    image_url)
    end
  end
end
