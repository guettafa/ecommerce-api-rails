class CreateAds < ActiveRecord::Migration[7.1]
  def change
    create_table :ads do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
