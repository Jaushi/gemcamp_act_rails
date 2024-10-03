# Activity
* Create atleast 10 records using the `create` method
```ruby=
Product.create(name: "Wireless Headphones", description: "High-quality over-ear wireless headphones with noise cancellation and 20-hour battery life.", quantity: 50, price: 100.50, available: true, released_at: "2024-01-01", expiry_date: "2025-01-01", discount: 5.0)
Product.create(name: "Smartphone Stand", description: "Adjustable smartphone stand, perfect for watching videos or video conferencing.", quantity: 30, price: 150.99, available: true, released_at: "2024-02-15", expiry_date: "2025-02-15", discount: 10.0)
Product.create(name: "Bluetooth Speaker", description: "Compact portable Bluetooth speaker with deep bass and up to 12 hours of playtime.", quantity: 20, price: 75.25, available: true, released_at: "2024-03-10", expiry_date: "2025-03-10", discount: 7.5)
Product.create(name: "Fitness Tracker", description: "Waterproof fitness tracker with heart rate monitor, sleep tracking, and 7-day battery life.", quantity: 100, price: 199.99, available: true, released_at: "2024-04-20", expiry_date: "2025-04-20", discount: 15.0)
Product.create(name: "Gaming Mouse", description: "High-precision gaming mouse with customizable RGB lighting and adjustable DPI settings.", quantity: 15, price: 250.00, available: true, released_at: "2024-05-05", expiry_date: "2025-05-05", discount: 12.0)
Product.create(name: "Laptop Cooling Pad", description: "Ergonomic laptop cooling pad with adjustable fan speeds and quiet operation.", quantity: 40, price: 89.99, available: false, released_at: "2024-06-18", expiry_date: "2025-06-18", discount: 3.5)
Product.create(name: "Portable Charger", description: "10,000mAh portable charger with fast charging support for smartphones and tablets.", quantity: 60, price: 120.75, available: true, released_at: "2024-07-25", expiry_date: "2025-07-25", discount: 8.0)
Product.create(name: "Wireless Keyboard", description: "Sleek wireless keyboard with soft-touch keys and long battery life, ideal for office use.", quantity: 25, price: 175.50, available: true, released_at: "2024-08-12", expiry_date: "2025-08-12", discount: 6.0)
Product.create(name: "USB-C Hub Pro", description: "Multi-port USB-C hub with HDMI, USB 3.0, and SD card reader, perfect for laptops and tablets.", quantity: 75, price: 220.00, available: true, released_at: "2024-09-30", expiry_date: "2025-09-30", discount: 9.0) 
Product.create(name: "Smart Light Bulb", description: "Wi-Fi enabled smart light bulb with customizable color settings and voice control compatibility.", quantity: 10, price: 300.00, available: false, released_at: "2024-10-05", expiry_date: "2025-10-05", discount: 20.0)
```
* Create atleast 10 records using the `save` method
```ruby=
product1 = Product.new(name: "Wireless Headphones", description: "High-quality over-ear wireless headphones with noise cancellation and 20-hour battery life.", quantity: 50, price: 100.50, available: true, released_at: "2024-01-01", expiry_date: "2025-01-01", discount: 5.0)
product1.save
product2 = Product.new(name: "Smartphone Stand", description: "Adjustable smartphone stand, perfect for watching videos or video conferencing.", quantity: 30, price: 150.99, available: true, released_at: "2024-02-15", expiry_date: "2025-02-15", discount: 10.0)
product2.save
product3 = Product.new(name: "Bluetooth Speaker", description: "Compact portable Bluetooth speaker with deep bass and up to 12 hours of playtime.", quantity: 20, price: 75.25, available: true, released_at: "2024-03-10", expiry_date: "2025-03-10", discount: 7.5)
product3.save
product4 = Product.new(name: "Fitness Tracker", description: "Waterproof fitness tracker with heart rate monitor, sleep tracking, and 7-day battery life.", quantity: 100, price: 199.99, available: true, released_at: "2024-04-20", expiry_date: "2025-04-20", discount: 15.0)
product4.save
product5 = Product.new(name: "Gaming Mouse", description: "High-precision gaming mouse with customizable RGB lighting and adjustable DPI settings.", quantity: 15, price: 250.00, available: true, released_at: "2024-05-05", expiry_date: "2025-05-05", discount: 12.0)
product5.save
product6 = Product.new(name: "Laptop Cooling Pad", description: "Ergonomic laptop cooling pad with adjustable fan speeds and quiet operation.", quantity: 40, price: 89.99, available: false, released_at: "2024-06-18", expiry_date: "2025-06-18", discount: 3.5)
product6.save
product7 = Product.new(name: "Portable Charger", description: "10,000mAh portable charger with fast charging support for smartphones and tablets.", quantity: 60, price: 120.75, available: true, released_at: "2024-07-25", expiry_date: "2025-07-25", discount: 8.0)
product7.save
product8 = Product.new(name: "Wireless Keyboard", description: "Sleek wireless keyboard with soft-touch keys and long battery life, ideal for office use.", quantity: 25, price: 175.50, available: true, released_at: "2024-08-12", expiry_date: "2025-08-12", discount: 6.0)
product8.save
product9 = Product.new(name: "USB-C Hub Pro", description: "Multi-port USB-C hub with HDMI, USB 3.0, and SD card reader, perfect for laptops and tablets.", quantity: 75, price: 220.00, available: true, released_at: "2024-09-30", expiry_date: "2025-09-30", discount: 9.0)
product9.save
product10 = Product.new(name: "Smart Light Bulb", description: "Wi-Fi enabled smart light bulb with customizable color settings and voice control compatibility.", quantity: 10, price: 300.00, available: false, released_at: "2024-10-05", expiry_date: "2025-10-05", discount: 20.0)
product10.save
```
* Fetch all products where name is "Gaming mouse".
```ruby=
laptop_products = Product.where(name: "Gaming mouse")
```
* Find products where price is greater than 100.
```ruby=
products_greater100 = Product.where("price > ?", 100)
```
* Retrieve products where available is true.
```ruby=
available_products = Product.where(available: true)
```
* Fetch products where quantity is less than 50.
```ruby=
less_than_50 = Product.where("price < ?", 50)
```
* Find products where discount is exactly 10%.
```ruby=
less10_discounts = Product.where(discount: 10.0)
```
* Retrieve products where name contains the word "Pro".
```ruby=
pro_products = Product.where('name LIKE ?', '%Pro%')
```
* Fetch products where description includes the word "portable".
```ruby=
portable_products = Product.where("name LIKE ?", "%portable%")
```
* Find products where price is between 50 and 150.
```ruby=
products_in_range = Product.where(price: 50..150)
```
* Retrieve products where available is false and quantity is greater than 0.
```ruby=
not_available_products = Product.where(available: false).where("quantity > ?", 0)
```
* Fetch products where released_at is after January 1, 2023.
```ruby=
recent_products = Product.where("released_at > ?", Date.new(2023, 1, 1))
```
* Find products where expiry_date is nil.
```ruby=
products_with_no_expiry = Product.where(expiry_date: nil)
```
* Retrieve products where released_at is before January 1, 2022.
```ruby= 
products = Product.where('released_at < ?', Date.new(2022, 1, 1))
```
* Fetch products where quantity is between 10 and 100.
```ruby= 
products = Product.where(price: 10..100)
```
* Find products where discount is greater than or equal to 5%.
```ruby=
products = Product.where('discount >= ?', 5)
```
* Retrieve products where price is less than or equal to 200 and available is true.
```ruby=
products = Product.where('price <= ?', 200).where(available: true)
```
* Fetch products where expiry_date is before today’s date.
```ruby=
products = Product.where('expiry_date < ?', Date.today)
```
* Find products where name starts with the letter "A".
```ruby=
products = Product.where('name LIKE ?', 'A%')
```
* Retrieve products where price is not equal to 100.
```ruby=
products = Product.where('price != ?', 100)
```
* Fetch products where quantity is nil.
```ruby=
products = Product.where(quantity: nil)
```
* Find products where discount is not nil.
```ruby=
products = Product.where.not(discount: nil)
```
* Update the price of a product where name is "Laptop" to 120.
```ruby=
Product.where(name: 'Laptop').update_all(price: 120)
```
* Set the available status to false for products where quantity is 0.
```ruby=
Product.where(quantity: 0).update_all(available: false)
```
* Increase the discount by 5% for products where price is greater than 100.
```ruby=
Product.where('price > ?', 100).update_all('discount = discount + 5')
```
* Update the description to "Out of stock" for products where available is false.
```ruby=
Product.where(available: false).update_all(description: 'Out of stock')
```
* Change the expiry_date to December 31, 2024, for products with a discount greater than 10%.
```ruby=
Product.where('discount > ?', 10).update_all(expiry_date: Date.new(2024, 12, 31))
```
* Update the quantity to 50 for products where name starts with "Pro".
```ruby=
Product.where('name LIKE ?', '%Pro%').update_all(quantity: 50)
```
* Set the price to 200 for all products where discount is nil.
```ruby=
Product.where(discount: nil).update_all(price: 200)
```
* Mark products as available if their released_at is before January 1, 2023.
```ruby=
Product.where('released_at < ?', Date.new(2023, 1, 1)).update_all(available: true)
```
* Update the price to 80 where the quantity is between 10 and 20.
```ruby=
Product.where(quantity: 10..20).update_all(price: 80)
```
* Remove any discount (set to nil) for products where expiry_date is before today.
```ruby=
Product.where('expiry_date < ?', Date.today).update_all(discount: nil)
```
* Update the price to 80 where the quantity is between 10 and 20.
```ruby=
Product.where(quantity: 10..20).update_all(price: 80)
```
* Update the name to "Premium Laptop" for products where price is more than 500.
```ruby=
Product.where('price > ?', 500).update_all(name: 'Premium Laptop')
```
* Set the quantity to nil for products where available is false.
```ruby=
Product.where(available: false).update_all(quantity: nil)
```
* Update released_at to the current date for products with a price less than 50.
```ruby=
Product.where('price < ?', 50).update_all(released_at: Date.today)
```
* Reduce the price by 20% for products where quantity is less than 5.
```ruby=
 Reduce the price by 20% for products where quantity is less than 5.
```
* Set the discount to 0% for products with a price greater than or equal to 300.
```ruby=
Product.where('price >= ?', 300).update_all(discount: 0)
```
* Change the description to "Limited time offer" where the discount is 15%.
```ruby=
Product.where(discount: 15).update_all(description: 'Limited time offer')
```
* Set available to true for products where the price is between 100 and 200.
```ruby=
Product.where(price: 100..200).update_all(available: true)
```
* Increase the quantity by 10 for products where released_at is after January 1, 2023.
```ruby=
Product.where('released_at > ?', Date.new(2023, 1, 1)).update_all('quantity = quantity + 10')
```
* Set the expiry_date to nil for products where discount is less than 5%.
```ruby=
Product.where('discount < ?', 5).update_all(expiry_date: nil)
```
* Update the price to 150 where the description contains "sale".
```ruby=
Product.where('description LIKE ?', '%sale%').update_all(price: 150)
```
* Delete a product where name is "Laptop".
```ruby=
Product.where(name: 'Laptop').destroy_all
```
* Remove all products where available is false.
```ruby=
Product.where(available: false).destroy_all
```
* Delete products where price is greater than 500.
```ruby=
Product.where('price > ?', 500).destroy_all
```
* Remove all products where quantity is 0.
```ruby=
Product.where(quantity: 0).destroy_all
```
* Delete products where discount is greater than 20%.
```ruby=
Product.where('discount > ?', 20).destroy_all
```
* Remove products where expiry_date is before today’s date.
```ruby=
Product.where('expiry_date < ?', Date.today).destroy_all
```
* Delete all products where name starts with "Pro".
```ruby=
Product.where('name LIKE ?', 'Pro%').destroy_all
```
* Remove products where price is less than 50.
```ruby=
Product.where('price < ?', 50).destroy_all
```
* Delete products where released_at is before January 1, 2022.
```ruby=
Product.where('released_at < ?', Date.new(2022, 1, 1)).destroy_all
```
* Remove products where description contains "discontinued".
```ruby=
Product.where('description LIKE ?', '%discontinued%').destroy_all
```
* Delete products where quantity is between 1 and 10.
```ruby=
Product.where(quantity: 1..10).destroy_all
```
* Remove all products where available is true and price is greater than 300.
```ruby=
Product.where(available: true).where('price > ?', 300).destroy_all
```
* Delete products where discount is nil.
```ruby=
Product.where(discount: nil).destroy_all
```
* Remove products where price is exactly 100.
```ruby=
Product.where(price: 100).destroy_all
```
* Delete products where released_at is more than 5 years ago.
```ruby=
Product.where('released_at < ?', 5.years.ago).destroy_all
```
* Remove products where description includes "obsolete".
```ruby=
Product.where('description LIKE ?', '%obsolete%').destroy_all
```
* Delete products where quantity is nil.
```ruby=
Product.where(quantity: nil).destroy_all
```
* Remove products where expiry_date is within the next month.
```ruby=
Product.where(expiry_date: Date.today..1.month.from_now).destroy_all
```
* Delete products where discount is less than 5%.
```ruby=
Product.where('discount < ?', 5).destroy_all
```
* Remove all products where available is true but quantity is less than 5.
```ruby=
Product.where(available: true).where('quantity < ?', 5).destroy_all
```
* Print the name of all the products
```ruby=
Product.pluck(:name).each do |name|
  puts name
end
```
* Write a new migration to rename the description to content
```ruby=

```
* Write a new migration to add a new column image
```ruby=

```
* Write a new migration to remove the column expiry_date
```ruby=

```

# Validations
```
irb(main):015> product = Product.new(name: "", content: "", quantity: -1, price: -10, available: nil, released_at: nil, discount: 150)

irb(main):017> product.errors.full_messages
=> ["Name can't be blank", "Content can't be blank", "Available can't be blank", "Released at can't be blank", "Image can't be blank"]
```

```
irb(main):029> product = Product.new(name: "test", content: "test", quantity: 150, price: -10, available: true, released_at: Time.now, discount: 150)
=> 
#<Product:0x000055ff03aedb40
...
irb(main):030> product.valid?
=> false

irb(main):033* product.errors.full_messages.each do |message|
irb(main):034*   puts message
irb(main):035> end
Discount must be between 0 and 100
Price must be greater than 0
Quantity must be greater than 0 or less than 100
=> ["Discount must be between 0 and 100", "Price must be greater than 0", "Quantity must be greater than 0 or less than 100"]
```