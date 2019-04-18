class PortfolioSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :account_balance

  belongs_to :user
  # has_many :portfoliostats
  has_many :subportfolios
  # has_many :equities, through: :subportfolios
end
