class CreateNotodos < ActiveRecord::Migration[7.0]
  def change
    create_table :notodos do |t|
      t.string :title
      t.boolean :completed

      t.timestamps
    end
  end
end
