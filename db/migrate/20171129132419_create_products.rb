class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :amount
      t.decimal :value, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
