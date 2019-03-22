class AddErrorIndexesToTests < ActiveRecord::Migration[5.1]
  def change
    add_column :tests, :error_indexes, :integer, array: true, default: []
    remove_column :tests, :correct_words, :integer
  end
end
