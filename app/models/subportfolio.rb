class Subportfolio < ApplicationRecord
  #subportfolio contains the info of the equity in the portfolio
  belongs_to :portfolio
  belongs_to :equity
end
