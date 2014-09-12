class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :address

      t.timestamps
    end
  end
end
