class Address < ApplicationRecord
  belongs_to :user
  has_one :order
  acts_as_paranoid
end