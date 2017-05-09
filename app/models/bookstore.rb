class Bookstore < ActiveRecord::Base
  has_many :sales
  has_many :authors, { through: :sales}
end
