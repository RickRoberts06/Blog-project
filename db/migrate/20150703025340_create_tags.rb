class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.references :user, index: true, foreign_key: true
      t.references :pod, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
