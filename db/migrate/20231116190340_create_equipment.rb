class CreateEquipment < ActiveRecord::Migration[7.1]
  def change
    create_table :equipment do |t|
      t.string :name
      t.string :equipment_type
      t.references :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
