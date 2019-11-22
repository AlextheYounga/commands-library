class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :sequence      
      t.text :content
      t.text :notes
      t.integer :user_id
    end
  end
end
