class Coupon < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :order, optional: true
    belongs_to :cart, optional: true
    acts_as_paranoid

    has_many :images
    accepts_nested_attributes_for :images

    enum formality: [:percent, :money]
end 