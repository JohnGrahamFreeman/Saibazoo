class CreateSpecies < ActiveRecord::Migration[5.2]
  def change
    create_table :species do |t|
      t.string :name
      t.string :subtype
      t.text :traits
      t.string :image_path, :default => "https://res.cloudinary.com/johngfreeman/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1566570524/default.png"
      t.timestamps
    end
  end
end
