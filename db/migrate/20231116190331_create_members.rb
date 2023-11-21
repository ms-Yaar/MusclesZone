class CreateMembers < ActiveRecord::Migration[7.1]
  def change
    create_table :members do |t|
      t.string :username
      t.integer :age
      t.string :gender
      t.string :address
      t.references :admin, null: false, foreign_key: true
      t.references :trainer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
