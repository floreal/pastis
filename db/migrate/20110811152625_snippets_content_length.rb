class SnippetsContentLength < ActiveRecord::Migration
  def self.up
    drop_table :snippets
    
    create_table :snippets do |t|
      t.string :language
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :snippets
    
    create_table :snippets do |t|
      t.string :language
      t.string :content

      t.timestamps
    end
  end
end
