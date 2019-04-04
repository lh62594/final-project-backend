class Api::V1::EquitiesController < ApplicationController

  def index
    @equities = Equity.all
    render json: @equities
  end

  private

  def find_equity
    @equities = Equity.find(params[:id])
  end


end
