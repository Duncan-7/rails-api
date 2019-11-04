class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :guid
      t.boolean :isActive
      t.string :balance
      t.string :picture
      t.integer :age
      t.string :eyeColor
      t.string :name
      t.string :gender
      t.string :company
      t.string :email
      t.string :phone
      t.string :address
      t.string :about
      t.datetime :registered
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
