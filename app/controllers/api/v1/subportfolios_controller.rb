class Api::V1::SubportfoliosController < ApplicationController
    def index
      @subportfolios = Subportfolio.all
      render json: @subportfolios, :include => :equities
    end

    def create
      @subportfolio = Subportfolio.create(subportfolio_params)
      render json: @subportfolio
    end

    def show
      find_subportfoio
      render json: @subportfolio
    end

    def update
      find_subportfoio
      @subportfolio.update(subportfolio_params)
      render json: @subportfolio
    end

    def destroy
      find_subportfoio
      @subportfolio.destroy
    end

    private

    def find_subportfoio
      @subportfolio = Subportfolio.find(params[:id])
    end

    def subportfolio_params
      params.permit(:portfolio_id, :equity_id, :initial_px, :category, :date_bought, :date_sold, :quantity, :end_px, :initial_value, :end_value)
    end

end
