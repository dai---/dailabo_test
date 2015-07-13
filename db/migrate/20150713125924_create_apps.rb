class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.string :store_id
      t.string :banner_url

      t.timestamps null: false
    end
  end
end
