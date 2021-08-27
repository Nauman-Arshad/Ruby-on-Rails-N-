class CreateArticals < ActiveRecord::Migration[6.1]
  def change
    create_table :articals do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
