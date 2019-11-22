class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :color
      t.string :class
      t.timestamps
    end
  end
end
