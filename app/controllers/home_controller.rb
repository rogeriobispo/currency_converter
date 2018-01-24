class HomeController < ApplicationController
  before_action :set_exchange_params, only: [:exchange]
  def index
  end

  def exchange
    value = Currency.exchange(@currency, @currency_destination, @quantity)
    render json: {'value': value}
  end

  private
    def set_exchange_params
      @currency = params[:currency]
      @currency_destination = params[:currency_destination]
      @quantity = params[:quantity].to_f
    end
end
