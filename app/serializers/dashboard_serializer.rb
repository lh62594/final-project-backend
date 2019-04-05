class DashboardSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :newsfeed

  belongs_to :user
  # has_many :equity_dashboards
  # has_many :equities, :through => :equity_dashboards, :source => :equities
  # has_many :equities, through: :equity_dashboards

  has_many :equities
  
  # def include_equities?
  #   object.association(:equities).loaded?
  # end
end
