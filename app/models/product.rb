class Product < ApplicationRecord
  belongs_to :user
  has_many :catogories

  has_many :comments, :dependent => :destroy
end
