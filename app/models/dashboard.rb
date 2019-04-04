class Dashboard < ApplicationRecord
  belongs_to :user
  has_many :equity_dashboards
  has_many :equities, through: :equity_dashboards

end
