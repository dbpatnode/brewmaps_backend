class CreateBreweries < ActiveRecord::Migration[6.0]
  def change
    create_table :breweries do |t|
      t.string :brewery_name
      t.string :brewery_type
      t.string :street
      t.string :city
      t.string :state
      t.string :postal_code
      t.float :lng
      t.float :lat
      t.string :phone
      t.string :website_url

      t.timestamps
    end
  end
end
