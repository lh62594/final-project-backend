class Api::V1::DashboardsController < ApplicationController

  def index
    # byebug
    @dashboards = Dashboard.all
    render json: @dashboards, :include => :equities
  end

  def create
    @dashboard = Dashboard.create(dashboard_params)
    render json: @dashboard
  end

  def destroy
    find_dashboard
    @dashboard.destroy
  end

  def update
    find_dashboard
    @dashboard.update(dashboard_params)
    render json: @dashboard
  end

private

  def find_dashboard
    @dashboard = Dashboard.find(params[:id])
  end

  def dashboard_params
    params.permit(:user_id, :name, :newsfeed)
  end

end
