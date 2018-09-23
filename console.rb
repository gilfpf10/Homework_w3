require_relative ("models/customers")
require_relative("models/films")
require_relative("models/tickets")

require("pry-byebug")

Customer.delete_all()
Ticket.delete_all()


user1 = Customer.new({"name" => "Gil", "funds" => 10})
user1.save()
user2 = Customer.new({"name" => "Kol", "funds" => 15})
user2.save()

user1.funds = 30
user1.update()

film1 = Film.new({"title" => "scream", "price" => 5})
film1.save
film2 = Film.new ({"title" => "scream2", "price" => 10})
film2.save

ticket1 = Ticket.new({"customer_id" => user1.id, "film_id" => film1.id})
ticket1.save
ticket2 = Ticket.new({"customer_id" => user2.id, "film_id" => film2.id})
ticket2.save

binding.pry
nil
