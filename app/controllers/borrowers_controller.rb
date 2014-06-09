class BorrowersController < ApplicationController

  def create
    Borrower.create("person_id" => params["chosen_person_id"],
                 "expense_id" => params["chosen_expense_id"],
                 "amount_owed" => params["amount_owed"])
    redirect_to "/borrowers"
  end

  def destroy
    borrower = Borrower.find_by("id" => params["id"])
    expense = Expense.find_by("id" => borrower["expense_id"])
    expense.update("totalamount" => expense["totalamount"] - borrower["amount_owed"])
    borrower.delete
    redirect_to "/borrowers"
  end


end
