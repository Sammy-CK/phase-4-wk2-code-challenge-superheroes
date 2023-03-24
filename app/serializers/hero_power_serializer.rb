class HeroPowerSerializer < ActiveModel::Serializer
  attributes :id, :strength, :power_id, :hero_id
end
