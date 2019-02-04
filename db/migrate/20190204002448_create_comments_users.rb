class CreateCommentsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :comments_users do |t|
      t.belongs_to :comment, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
