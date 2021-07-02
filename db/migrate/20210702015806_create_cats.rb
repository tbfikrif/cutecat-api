class CreateCats < ActiveRecord::Migration[6.1]
  def change
    create_table :cats do |t|
      t.string :api_id
      t.string :name
      t.string :url
      t.timestamps
    end
  end
end
