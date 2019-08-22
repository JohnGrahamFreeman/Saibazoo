class CreateSpecies < ActiveRecord::Migration[5.2]
  def change
    create_table :species do |t|
      t.string :name
      t.string :subtype
      t.text :traits
      t.string :image_path
      t.timestamps
    end
  end
end
