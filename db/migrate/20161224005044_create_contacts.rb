class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :email
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
