class Expense < ActiveRecord::Base
  validates :title, presence: true
  validate :totalamount, presence: true
  validate :date, presence: true
  validate :notes, presence: true

  validates_numericality_of :totalamount, :only_integer =>true, :greater_than_or_equal_to =>0

  validates :title, uniqueness: true
end
