class EquityDashboard < ApplicationRecord
  belongs_to :dashboard
  belongs_to :equity
end
