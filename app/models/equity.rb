class Equity < ApplicationRecord
  has_many :equity_dashboards
  has_many :dashboards, through: :equity_dashboards

  belongs_to :subportfolio
end
