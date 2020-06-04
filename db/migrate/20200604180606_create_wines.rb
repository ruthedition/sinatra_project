class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :name 
      t.string :type
      t.string :price
      t.integer :year_sealed
      t.integer :country_id
      t.integer :user_id
    end 
  end
end
