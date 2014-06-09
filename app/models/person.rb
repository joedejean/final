class Person < ActiveRecord::Base
  validates :name, presence: true
  validate :email, presence: true
  validate :notes, presence: true

    validates :name, uniqueness: true

end
