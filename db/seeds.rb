# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

usera = User.create(username: "mario_rossi", dob: DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"), email: "mariorossi@mail.com")
userb = User.create(username: "giorgio_verdi", dob: DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"), email: "gverdi@mail.com")

producta = Product.create(name: "Asciugamano", description: "Per mani sempre asciutte", price: 8.99)
productb = Product.create(name: "Asciugacapelli", description: "Per capelli sempre perfetti", price: 20.99)
productc = Product.create(name: "Tappeto", description: "Per piedi sempre sul morbido", price: 4.99)

warehousea = Warehouse.create(name: "wh-1", address: "via Verdi, 19, Milano")
warehouseb = Warehouse.create(name: "wh-2", address: "via Bianchi, 1, Bologna")
warehousec = Warehouse.create(name: "wh-3", address: "via Neri, 584, Pavia")
