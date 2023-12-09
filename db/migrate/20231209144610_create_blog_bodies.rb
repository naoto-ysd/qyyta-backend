class CreateBlogBodies < ActiveRecord::Migration[6.0]
  def change
    create_table :blog_bodies do |t|
      t.string :data
    end
  end
end
