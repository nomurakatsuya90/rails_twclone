class CreatePostMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :post_messages do |t|
      t.string :content

      t.timestamps
    end
  end
end
