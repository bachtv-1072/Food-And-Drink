class Image < ApplicationRecord
  belongs_to :coupon
  mount_uploader :attachment, Uploader
end