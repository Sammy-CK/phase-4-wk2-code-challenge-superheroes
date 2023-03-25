class HeroPowersController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :invalid_heropower_params

  def create
    heropower = HeroPower.create!(heropower_params)
    hero = Hero.find(heropower_params[:hero_id])
    render json: hero,serializer: IndividualHeroSerializer, status: :created
  end

  private

  def heropower_params
    params.permit(:strength, :power_id, :hero_id)
  end

  def invalid_heropower_params(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end
end
