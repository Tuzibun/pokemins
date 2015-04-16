class CreateArena < ActiveRecord::Migration
  def change
    create_table :arenas do |t|
      t.string :name
    end
  end
end
