class AddStatusToPosts < ActiveRecord::Migration[5.0]
  def self.up
    add_column :posts, :status, :string
  end
  def self.down
    remove_column :posts, :status
  end
end
