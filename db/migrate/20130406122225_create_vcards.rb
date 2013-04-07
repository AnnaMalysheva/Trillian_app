class CreateVcards < ActiveRecord::Migration
  def change
    create_table :vcards do |t|
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string  :zipCode
      t.integer :user_id
      
      t.timestamps
    end
    
    add_index :vcards, :user_id 
  end
end
