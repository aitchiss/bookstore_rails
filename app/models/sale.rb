class Sale < ActiveRecord::Base
  belongs_to :author
  belongs_to :bookstore
  belongs_to :book
end
