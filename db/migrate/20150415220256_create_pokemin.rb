class CreatePokemin < ActiveRecord::Migration
  def change
    create_table :pokemins do |t|
      t.string :name
      t.string :power
      t.string :photo
    end
  end
end
