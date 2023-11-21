class CreatePagyTables < ActiveRecord::Migration[7.1]
  def change
    create_table :pagy_tables do |t|

      t.timestamps
    end
  end
end
