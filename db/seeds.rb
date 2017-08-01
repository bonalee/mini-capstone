Supplier.create!([
  {name: "Designated Donut", email: "designateddonut@email.com", phone_number: "847-755-7555"}
])
Product.create!([
  {name: "Triple Chocolate", price: "1.0", description: "Chocolate donut dough with chocolate glazed sprinkled with chocolate sprinkles.", stock_status: nil},
  {name: "Chocolate Long John", price: "1.0", description: "A bar-shaped, yeast-risen pastry often coated with glaze or icing.", stock_status: nil},
  {name: "Jelly-Filled", price: "1.25", description: "A jelly filled pastry", stock_status: nil},
  {name: "French Cruller", price: "1.5", description: "A fried pastry often made from a rectangle of dough, with a cut made in the middle that allows it to be pulled over and through itself producing twists in the side of the pastry.", stock_status: nil},
  {name: "Apple Fritter", price: "1.75", description: "A beautiful blend of spiced apples and batter or breading glazed over in cinnamon sugar", stock_status: nil},
  {name: "Chocolate Donut", price: "1.0", description: "Homemade, soft donut dough texture glazed with a ooey, gooey chocolate glaze", stock_status: nil},
  {name: "Pączki", price: "2.5", description: "Pączki are pastries traditional to Polish cuisine. They are similar to doughnuts.", stock_status: nil},
  {name: "Strawberry Sprinkled", price: "1.0", description: "Delicious, homemade donut dough glazed with warm, sweet strawberry glaze sprinkled with colorful sprinkles", stock_status: nil},
  {name: "Boston Creme", price: "1.5", description: "A yellow butter cake that is filled with custard or cream and topped with chocolate glaze.", stock_status: nil}
])
Image.create!([
  {product_id: 5, url: "http://deliciouslyyum.com/wp-content/uploads/2015/01/jelly-filled-donut-holes.jpg"},
  {product_id: 4, url: "https://s-media-cache-ak0.pinimg.com/736x/2e/d8/9a/2ed89a655049fad9784a62ef9f937088--chocolate-eclairs-chocolate-glaze.jpg"},
  {product_id: 3, url: "http://cf.thelittleepicurean.com/wp-content/uploads/2015/02/triple-chocolate-donuts-3.jpg"},
  {product_id: 6, url: "http://sugarhero.com/wp-content/uploads/2014/10/apple-cider-fritters-3.jpg"},
  {product_id: 1, url: "http://littlespicejar.com/wp-content/uploads/2014/04/French-Honey-Crullers-Butter-Glazed.jpg"},
  {product_id: 3, url: "http://www.pinkwhen.com/wp-content/uploads/2015/10/Death-by-Chocolate-3.jpg"},
  {product_id: 8, url: "https://www.browneyedbaker.com/wp-content/uploads/2014/02/packzi-60-600.jpg"},
  {product_id: 7, url: "http://www.crunchycreamysweet.com/wp-content/uploads/2016/02/chocolate-donuts-1.jpg"},
  {product_id: 9, url: "http://www.howsweeteats.com/wp-content/uploads/2015/06/strawberry-donuts-I-howsweeteats.com-9.jpg"},
  {product_id: 2, url: "http://4.bp.blogspot.com/-O9DxU2H0ZgU/UvgnR_JTcdI/AAAAAAAAA4g/lqyv0_uJ_X4/s1600/donuts_fave.jpg"}
])
User.create!([
  {name: "Bona", email: "bona@email.com", password_digest: "stringcheese"},
  {name: "Peter", email: "peter@email.com", password_digest: "$2a$10$GsI2O90yE0h1zU/Cw.O6meDPEcsemVaH/hxeFXFU9AYHZEfGFiOy2"},
  {name: "Myles", email: "myles@email.com", password_digest: "password"},
  {name: "Peter", email: "peter2@email.com", password_digest: "$2a$10$9m2kV.6gohAICUROxOQNXucTMfXI007IQPBV4.hsD.V0gg/wzVmYy"},
  {name: "Peter", email: "peter2@email.com", password_digest: "$2a$10$/krsRYMLXhCOnFVUZ5AR6.dUFKE4tf8nb6uugwAttSyHXsTko3Mti"},
  {name: "Test", email: "testy@email.com", password_digest: "$2a$10$hBqmEDygEuyX7ga8evPS0ulw9bMfwMucWyhr7/FpVxHFB7bn3iqH."}
])
Category.create!([
  {name: "Filled"},
  {name: "Topped"},
  {name: "Kosher"},
  {name: "Gluten-Free"}
])
CategoryProduct.create!([
  {product_id: 1, category_id: 3},
  {product_id: 3, category_id: 3},
  {product_id: 2, category_id: 4},
  {product_id: 8, category_id: 1},
  {product_id: 2, category_id: 2}
])
