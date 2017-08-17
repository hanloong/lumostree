class CreateNodes < ActiveRecord::Migration[5.1]
  def change
    create_table :nodes do |t|
      t.string :value
      t.integer :parent_id

      t.timestamps
    end
  end
end
