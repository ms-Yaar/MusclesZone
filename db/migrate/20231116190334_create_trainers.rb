class CreateTrainers < ActiveRecord::Migration[7.1]
  def change
    create_table :trainers do |t|
      t.string :name
      t.string :specialization
      t.references :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
