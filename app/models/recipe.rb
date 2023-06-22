class Recipe < ApplicationRecord
  validates :dish,       presence: true
  validates :persons,    presence: true
  validates :material,   presence: true
  validates :amount,     presence: true
  validates :make_one,   presence: true
  validates :make_two,   presence: true
  
  has_one_attached :image
  belongs_to :user
  
end
