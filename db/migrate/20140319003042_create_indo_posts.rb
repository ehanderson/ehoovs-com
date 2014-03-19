class CreateIndoPosts < ActiveRecord::Migration
  def change
    create_table :indo_posts do |t|
      t.string :title
      t.text :content
      t.string :location
      t.string :date

      t.timestamps
    end
  end
end
