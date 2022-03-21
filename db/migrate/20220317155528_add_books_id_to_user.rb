class AddBooksIdToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :books_id, :integer
  end
end
