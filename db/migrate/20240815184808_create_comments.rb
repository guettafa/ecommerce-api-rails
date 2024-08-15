class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.text :content

      t.references :ad
      t.references :customer
      t.timestamps
    end
  end
end
