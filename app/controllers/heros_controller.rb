class HerosController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :not_found_hero

  def index
    heroes = Hero.all
    render json: heroes, status: :ok
  end

  def show
    hero = Hero.find(params[:id])
    render json: hero, serializer: IndividualHeroSerializer, status: :ok
  end

  private

  def not_found_hero
    render json: { error: "Hero not found" }, status: :not_found
  end
end
