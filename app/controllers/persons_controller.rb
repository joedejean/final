class PersonsController < ApplicationController

  def create
    Person.create("name" => params["name"],
                 "email" => params["email"],
                 "notes" => params["notes"])
    redirect_to "/borrowers"
  end

  def destroy
    the_person = Person.find_by("id" => params["id"])
    loans = Borrower.where("person_id" => the_person["id"])
      loans.each do |loan|
        expense = Expense.find_by("id" => loan["expense_id"])
        expense.update("totalamount" => expense["totalamount"] - loan["amount_owed"])
      end
    the_person.delete
    redirect_to "/borrowers"
  end


end
