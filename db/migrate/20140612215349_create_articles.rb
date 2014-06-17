class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.belongs_to :team, index: true
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
