class CreateSaibamons < ActiveRecord::Migration[5.2]
  def change
    create_table :saibamons do |t|
      t.string :name
      t.string :species
      t.string :gender
      t.string :birthday
      t.string :owner

      t.timestamps
    end
  end
end
