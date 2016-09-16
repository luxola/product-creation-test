class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description
      t.integer :price, default: 0
      t.string :picture_url
      t.string :state, default: 'unpublished'

      t.timestamps
    end
  end
end
