class CreateSaibamons < ActiveRecord::Migration[5.2]
  def change
    create_table :saibamons do |t|
      t.string :name
      t.references :species, foreign_key: true
      t.string :gender
      t.string :nature
      t.date :birthday
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
