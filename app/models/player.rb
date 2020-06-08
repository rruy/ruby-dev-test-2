class Player < ApplicationRecord
  has_and_belongs_to_many :albuns
  
  validates_presence_of :name
end
