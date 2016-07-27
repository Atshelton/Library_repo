class Reservation < ActiveRecord::Base
  has_many :books
end
