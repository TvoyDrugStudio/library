class Building < ApplicationRecord
  has_many :books
  has_many :users
  has_many :workers
end
