class Sale < ActiveRecord::Base
  belongs_to :author
  belongs_to :bookstore
end
