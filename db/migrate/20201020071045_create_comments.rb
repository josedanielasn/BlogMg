class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :blog_id
      t.string :commenter
      t.text :comment_text
      t.timestamps
    end
  end
end
