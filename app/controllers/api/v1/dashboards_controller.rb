class Api::V1::DashboardsController < ApplicationController

  def index
    # byebug
    @dashboards = Dashboard.all
    render json: @dashboards, :include => :equities
  end

  def create
  end

  def delete
    @dashboard.destroy
  end

private

  def find_dashboard
    @dashboard = Dashboard.find(params[:id])
  end

  def dashboard_params
  end

end
