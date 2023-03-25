class PowersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :not_found_power
  rescue_from ActiveRecord::RecordInvalid, with: :not_valid_power_params
  wrap_parameters format: []

  def index
    powers = Power.all
    render json: powers, status: :ok
  end

  def show
    power = Power.find(params[:id])
    render json: power, status: :ok
  end

  def update
    power = Power.find(params[:id])
    power.update!(power_params)
    render json: power, status: :ok
  end

  private

  def not_valid_power_params(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

  def power_params
    params.permit(:description)
  end

  def not_found_power
    render json: { error: "Power not found" }, status: :not_found
  end
end
