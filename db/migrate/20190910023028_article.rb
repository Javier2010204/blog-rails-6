class Article < ActiveRecord::Migration[6.0]
    def change
        create_table :articles do |t|
            t.string :title
            t.integer :status
        end
    end
end
