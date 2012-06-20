class CreateAdministrativos < ActiveRecord::Migration
  def self.up
    create_table :administrativos do |t|
      t.string :user
      t.string :pass

      t.timestamps
    end
  end

  def self.down
    drop_table :administrativos
  end
end
