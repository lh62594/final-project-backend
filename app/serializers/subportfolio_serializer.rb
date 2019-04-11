class SubportfolioSerializer < ActiveModel::Serializer
  attributes :id, :category, :initial_px, :date_bought, :date_sold, :equity

  # belongs_to :portfolio
  has_one :equity

end
