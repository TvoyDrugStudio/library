class User < ApplicationRecord
  belongs_to :building
  has_many :rents
end
