class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end

    create_table :users do |t|
      t.string :name
      t.references :role, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
