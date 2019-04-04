class User < ApplicationRecord
  has_secure_password
  has_many :dashboards
  has_one :portfolio
end
