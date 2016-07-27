class Book < ActiveRecord::Base
  belongs_to :reservation
end
