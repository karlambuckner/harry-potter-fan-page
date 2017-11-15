class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.column :work_id, :int
      t.column :user_id, :int
      t.column :content, :text
    end
  end
end
