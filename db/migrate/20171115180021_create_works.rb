class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.column :name, :string
      t.column :description, :text
      t.column :category_id, :int
      t.column :image_url, :string
      t.column :created_at, :datetime
      t.column :updated_at, :datetime
      t.column :user_id, :int
    end
  end
end
