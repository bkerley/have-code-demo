class CreateSteins < ActiveRecord::Migration
  def self.up
    create_table :steins do |t|
      t.string :name
      t.string :material

      t.timestamps
    end
  end

  def self.down
    drop_table :steins
  end
end
