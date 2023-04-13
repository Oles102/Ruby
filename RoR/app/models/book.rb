class Book < ApplicationRecord
  belongs_to :author
  belongs_to :suppliers
  has_many :reviews
  has_and_belongs_to_many :orders
end
