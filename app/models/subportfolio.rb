class Subportfolio < ApplicationRecord
  belongs_to :portfolio
  has_many :equities
end
