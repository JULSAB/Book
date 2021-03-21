class CreateAdrLists < ActiveRecord::Migration[6.1]
  def change
    create_table :adr_lists do |t|
      t.string :Address
      t.integer :Phone
      t.string :Name
      t.string :LastName
      t.string :email

      t.timestamps
    end
  end
end
