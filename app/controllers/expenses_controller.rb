class ExpensesController < ApplicationController

  def create
    Expense.create("title" => params["title"],
                 "totalamount" => params["totalamount"],
                 "date" => params["date"],
                 "notes" => params["notes"])
    redirect_to "/expenses"
  end

  def destroy
    expense = Expense.find_by("id" => params["id"])
    expense.delete
    redirect_to "/expenses"
  end

  def update
    expense = Expense.find_by("id" => params["id"])
    expense.update("title" => params["title"], "totalamount" => params["totalamount"], "date" => params["date"], "notes" => params["notes"])
    redirect_to "/expenses"
  end


end
