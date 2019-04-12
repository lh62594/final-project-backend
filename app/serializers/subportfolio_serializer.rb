class SubportfolioSerializer < ActiveModel::Serializer
  attributes :id, :category, :initial_px, :end_px, :initial_value, :end_value, :quantity, :date_bought, :date_sold, :equity, :stats

  # belongs_to :portfolio
  has_one :equity
  has_many :stats

end
