class BookOrder < ApplicationRecord
  has_many :reviews
  has_many :orders
end
