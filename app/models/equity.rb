class Equity < ApplicationRecord
  has_many :equity_dashboards
  has_many :dashboards, through: :equity_dashboards

  has_many :subportfolios
  has_many :portfolios, through: :subportfolios
end
