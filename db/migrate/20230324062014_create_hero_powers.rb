class CreateHeroPowers < ActiveRecord::Migration[7.0]
  def change
    create_table :hero_powers do |t|
      t.string :strength
      t.integer :power_id
      t.integer :hero_id

      t.timestamps
    end
  end
end
