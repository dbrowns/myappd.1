class CreateFirms < ActiveRecord::Migration
  def change
    create_table :firms do |t|
      t.integer :firm_id
      t.string :type
      t.string :sector
      t.text :specialties
      t.integer :vintage
      t.string :location
      t.string :size
      t.text :projects
      t.text :top_10_products
      t.text :accolades
      t.text :state_licensure
      t.string :name
      t.string :email
      t.string :phone
      t.string :website

      t.timestamps
    end
  end
end
