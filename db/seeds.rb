Expense.delete_all
memorial = Expense.create("title" => "Memorial Day Weekend", "totalamount" => 500, "notes" => "House and boat", "date" => "5/26/2014")
dinner = Expense.create("title" => "Dinner", "totalamount" => 200, "notes" => "Tango Sur", "date" => "5/22/2014")
wedding = Expense.create("title" => "Wedding", "totalamount" => 150, "notes" => "Jamie's wedding gift", "date" => "5/14/14")
bartab = Expense.create("title" => "Bar Tab", "totalamount" => 100, "notes" => "Night out at World of Beer", "date" => "5/25/2014")
taxi = Expense.create("title" => "Taxi", "totalamount" => 25, "notes" => "Taxi home last night", "date" => "5/25/2014")
rentalcar = Expense.create("title" => "Rental Car", "totalamount" => 225, "notes" => "Rental car for wedding", "date" => "5/14/2014")

Person.delete_all
th = Person.create("name" => "Tom Hanks", "email" => "thanks@email.com", "notes" => "Famous actor")
bp = Person.create("name" => "Bill Paxton", "email" => "bpaxton@email.com", "notes" => "Always pays me late")
kb = Person.create("name" => "Kevin Bacon", "email" => "kbacon@email.com", "notes" => "Always at most 6 degrees away")

Borrower.delete_all
Borrower.create("person_id" => th.id, "expense_id" => memorial.id, "amount_owed" => 150)
Borrower.create("person_id" => bp.id, "expense_id" => memorial.id, "amount_owed" => 150)
Borrower.create("person_id" => kb.id, "expense_id" => memorial.id, "amount_owed" => 200)
Borrower.create("person_id" => th.id, "expense_id" => dinner.id, "amount_owed" => 50)
Borrower.create("person_id" => bp.id, "expense_id" => dinner.id, "amount_owed" => 50)
Borrower.create("person_id" => kb.id, "expense_id" => dinner.id, "amount_owed" => 100)
Borrower.create("person_id" => th.id, "expense_id" => wedding.id, "amount_owed" => 50)
Borrower.create("person_id" => bp.id, "expense_id" => wedding.id, "amount_owed" => 50)
Borrower.create("person_id" => kb.id, "expense_id" => wedding.id, "amount_owed" => 50)
Borrower.create("person_id" => th.id, "expense_id" => bartab.id, "amount_owed" => 100)
Borrower.create("person_id" => bp.id, "expense_id" => taxi.id, "amount_owed" => 25)
Borrower.create("person_id" => kb.id, "expense_id" => rentalcar.id, "amount_owed" => 225)




# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
