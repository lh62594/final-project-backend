class PortfolioSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name

  belongs_to :user
  # has_many :equity_dashboards
  # has_many :equities, :through => :equity_dashboards, :source => :equities
  # has_many :equities, through: :equity_dashboards

  has_many :subportfolios
  has_many :equities, through: :subportfolios
end
