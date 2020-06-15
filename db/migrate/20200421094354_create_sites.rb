class CreateSites < ActiveRecord::Migration[6.0]
  def change
    create_table :sites do |t|
      t.string :url, null: false
      t.integer :number_of_visits, default: 0

      t.timestamps
    end
  end
end
