class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :companyattrs

      t.timestamps
    end
    
    add_index :companies, :name 
  end
end
