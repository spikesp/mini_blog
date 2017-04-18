class AddSelfintroToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :intro_self, :text
  end
end
