class Borrower < ActiveRecord::Base
  validates :person_id, presence: true
  validate :expense_id, presence: true
  validate :amount_owed, presence: true

  validates_numericality_of :amount_owed, :only_integer =>true, :greater_than_or_equal_to =>0

end
