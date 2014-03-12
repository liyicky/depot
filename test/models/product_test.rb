require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  fixtures :products

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
                  price:        9.99,
                  image_url:    image_url)
    end

    ok = %w{ test.jpg test.gif test.png TEST.JPG TEST.GIF TEST.Jpg http://a.b.c/x/y/z/test.png }
    bad = %w{ test.doc test.txt text.gif.more test.jpg/more }

    ok.each do |name|
      assert new_product(name).valid?, "#{name} should be valid"
    end

    bad.each do |name|
      assert new_product(name).invalid?, "#{name} should be invalid"
    end
  end

  test "product is not valid without a unique title" do
    product = Product.new(title:        products(:ruby).title,
                          description:  "test",
                          price:        0.99,
                          image_url:    "test.png")
    assert product.invalid?
    assert_equal ["has already been taken"], product.errors[:title]
  end
end
