class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 5, scale: 2
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :items, :users
  end
end
