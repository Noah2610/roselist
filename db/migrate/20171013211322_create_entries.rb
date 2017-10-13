class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.string :name
      t.text :description
      t.float :quantity
      t.string :metric

      t.timestamps
    end
  end
end
