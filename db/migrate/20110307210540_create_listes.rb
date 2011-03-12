class CreateListes < ActiveRecord::Migration
  def self.up
    create_table :listes do |t|
      t.string :pour
      t.string :nom
      t.timestamps
    end
  end

  def self.down
    drop_table :listes
  end
end
