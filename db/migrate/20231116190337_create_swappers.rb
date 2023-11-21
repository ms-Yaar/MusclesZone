class CreateSwappers < ActiveRecord::Migration[7.1]
  def change
    create_table :swappers do |t|
      t.string :name
      t.string :experience
      t.references :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
