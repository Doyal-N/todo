class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.text :description, null: false
      t.boolean :completed, default: false
      t.datetime :completed_at
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
