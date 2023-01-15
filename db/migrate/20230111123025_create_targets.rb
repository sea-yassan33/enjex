class CreateTargets < ActiveRecord::Migration[6.0]
  def change
    create_table :targets do |t|
      t.string     :title,              null: false
      t.string     :youtube,            null: false
      t.integer    :exise_category_id,  null: false
      t.references :user,               null: false, foreign_key: true
      t.timestamps
    end
  end
end
