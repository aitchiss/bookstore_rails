class Author < ActiveRecord::Base
  has_many :books
  has_many :sales
  has_many :bookstores, { through: :sales }
end
