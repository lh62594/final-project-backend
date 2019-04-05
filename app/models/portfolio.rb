class Portfolio < ApplicationRecord
  belongs_to :user
  has_many :subportfolios
  has_many :equities, through: :subportfolios

end
