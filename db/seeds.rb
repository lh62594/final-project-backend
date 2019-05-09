require 'rest-client'
# require 'indico'
# require 'pry'
require 'json'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Seed Data for Users
# User.create(
#   first_name: "test",
#   last_name: "testing",
#   email: "testing@test.com",
#   username: "test1",
#   password: "test1"
# )

# User.create(
#   first_name: "abc",
#   last_name: "123",
#   email: "abc123@testing.com",
#   username: "abc",
#   password: "123"
# )

# Seed Data for dashboards
# As soon as a User is created, it also automatically creates the main dashboard
# Dashboard.create(
#   user_id: 2,
#   name: "main"
# )
#
# Dashboard.create(
#   user_id: 2,
#   name: "my watchlist"
# )
#
# EquityDashboard.create(
#   dashboard_id: 4,
#   equity_id: 5000
# )

# Seeding for Stocks
#first seed up to 3300 --> bad URI is at 3314!!! (GIG^)
# also skip 4624
def get_data
  response_string = RestClient.get("https://api.iextrading.com/1.0/ref-data/symbols")
  response_hash = JSON.parse(response_string)
  response_hash[8192..9000]
end


get_data.each do |stock|
    res = RestClient.get("https://api.iextrading.com/1.0/stock/#{stock['symbol']}/company")
    hash = JSON.parse(res)
    Equity.create(
      symbol: stock["symbol"],
      company_name: stock["name"],
      exchange: hash["exchange"],
      industry: hash["industry"],
      website: hash["website"],
      description: hash["description"],
      ceo: hash["CEO"],
      sector: hash["sector"],
      tags: hash["tags"]
    )
end
#
# response_hash[4625..3316].each do |stock|
#   res = RestClient.get("https://api.iextrading.com/1.0/stock/#{stock['symbol']}/company")
#   hash = JSON.parse(res)
#   puts "*******************************************"
#   puts stock["name"]
#   puts hash["industry"]
# end
