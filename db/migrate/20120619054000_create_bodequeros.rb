class CreateBodequeros < ActiveRecord::Migration
  def self.up
    create_table :bodequeros do |t|
      t.string :user
      t.string :pass
      t.string :fecha

      t.timestamps
    end
  end

  def self.down
    drop_table :bodequeros
  end
end
