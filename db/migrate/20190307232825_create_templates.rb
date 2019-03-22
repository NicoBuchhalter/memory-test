class CreateTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :templates do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
    add_index :templates, :title, unique: true
  end
end
