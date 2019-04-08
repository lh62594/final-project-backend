class Api::V1::EquityDashboardsController < ApplicationController

  def index
    @eqdashboards = EquityDashboard.all
    render json: @eqdashboards
  end

  def create
    @eqdashboard = EquityDashboard.create(eqdashboard_params)
    render json: @eqdashboard
  end

  def delete
    find_dashboard
    @dashboard.destroy
  end

  private

  def find_equity_dashboard
    @eqdashboard = EquityDashboard.find(params[:id])
  end

  def eqdashboard_params
    params.permit(:dashboard_id, :equity_id)
  end

end
