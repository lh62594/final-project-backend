class EquitySerializer < ActiveModel::Serializer
  attributes :id, :symbol, :company_name, :exchange, :industry, :website, :description, :ceo, :sector, :tags

  # has_many :equity_dashboards
  # has_many :dashboards, through: :equity_dashboards
end
