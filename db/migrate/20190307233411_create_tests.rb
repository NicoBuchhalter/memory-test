class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
      t.belongs_to :template, foreign_key: true
      t.text :evaluation
      t.belongs_to :user, foreign_key: true
      t.integer :correct_words

      t.timestamps
    end
  end
end
