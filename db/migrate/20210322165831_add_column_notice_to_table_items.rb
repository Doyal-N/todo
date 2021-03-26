class AddColumnNoticeToTableItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :notice, :text
    add_index :items, :completed
    add_column :items, :position, :integer
  end
end
