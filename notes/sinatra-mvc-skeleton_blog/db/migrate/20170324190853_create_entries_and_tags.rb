class CreateEntriesAndTags < ActiveRecord::Migration
  def change
  	  create_table :entries_and_tags do |t|
      t.belongs_to :entrie, index: true
      t.belongs_to :tag, index: true

      t.timestamps
    end
  end
end
