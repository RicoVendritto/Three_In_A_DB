class CreateAutoparts < ActiveRecord::Migration[6.0]
  def change
    create_table :autoparts do |t|
      t.string :name
      t.string :description
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
