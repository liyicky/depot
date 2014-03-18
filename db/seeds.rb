# Excerpted from "Agile Web Developement with Rails, 4th Ed"
#
Product.delete_all
Product.create(:title => 'Akali\'s Bra',
               :description => %{<p>
                                  Akali's ninja bra. It supports, but mainly carries.
                                </p>},
               :image_url   => 'http://glamorousgamergirls.files.wordpress.com/2012/04/1armorfront.jpg',
               :price       => 410.00)

Product.create(:title       => 'Cat Hair in a bag',
               :description => %{<p>
                                   Cats have very loose skin. This is because they need it when they fight, a lot of times their wounds are pretty deep.
                                   Skin is a large,spread out organ. It also requires a lot of protein. In fact about 25% to 30% of all daily protein is required by both their skin and fur. The skin is made up of two layers: the dermis and the epidermis. The strength and the ability to stretch is due mostly to the dermis, which also is responsable for the skin repairs.
                                   2 fur coats
                                   Most cats have two layers of fur. On top is the hair that is responsible for the color and pattern. The bottom layer is responsible for the insulation.
                                   Angora cats have longer Gaurd hairs, the Cornish Rex has no gaurd hairs at all, and the Persians have longer Gaurd hairs and under hairs.Hair growth is related to seasonal molting. Inside cats that are exposed to untrue lighting and high temps might shed throughout the year.
                                   Self washing fur coat
                                   Each peice of fur is covered with overlapping scales, each about 0.0005 mm thick. The edges that don’t have these scales work like teeth. If one hair out or is pushed out of place then other hairs will tilt over until that hair falls back into place. One lick with their tongue will help this process.
               </p>},
               :image_url   => 'http://4.bp.blogspot.com/-3WbFecUjEFI/TsK0Ytd9a0I/AAAAAAAANss/wqZruKg64sQ/s1600/cwch6.jpg',
               :price       => 0.20)

Product.create(:title       => 'Wonder Water by Hasco',
               :description => %{<p>
                                  Introducing Wonder Water! by Hasco. Thirsty? Want something to drink? No longer! Hasco's amazing new product will satisfy you all night long!
                                  Never again feel thirsty. Never again wait in line at a water fountain! Wonder Water by Hasco taste like water, looks like water and feels like water.
                                  Even our specilized science agents couldn't let the difference between out product and real water!
                                </p>},
               :image_url   => 'http://vterrain.org/Water/water2.bmp',
               :price       => 7.99)

Product.create(:title => 'Test',
               :description => %{<p>Test</p>},
               :image_url => 'https://www.google.com/images/srpr/logo11w.png',
               :price => 1.99)


