class CreateBenutzers < ActiveRecord::Migration
  def self.up
    create_table :benutzers do |t|
      t.string :login, :null => false, :limit => 30
      t.string :pass, :null => false, :limit => 30
      t.string :salt, :null => false, :default => "Hugo1"

      t.string :name, :null => false

      t.timestamps

    end

    add_index :benutzers, :login      ,:unique => true
    add_index :benutzers, :name

  end

  def self.down
    drop_table :benutzers
  end

end
