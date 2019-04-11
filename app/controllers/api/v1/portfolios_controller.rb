class Api::V1::PortfoliosController < ApplicationController

  def index
    @portfolios = Portfolio.all
    render json: @portfolios, :include => :subportfolios
  end

  def create
    @portfolio = Portfolio.create(portfolio_params)
    render json: @portfolio
  end

  def destroy
    find_portfolio
    @portfolio.destroy
  end

  def update
    find_portfolio
    @portfolio.update(portfolio_params)
    render json: @portfolio
  end

private

  def find_portfolio
    @portfolio = Portfolio.find(params[:id])
  end

  def portfolio_params
    params.permit(:user_id, :name, :newsfeed)
  end


end
