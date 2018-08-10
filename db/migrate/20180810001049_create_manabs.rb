class CreateManabs < ActiveRecord::Migration[5.0]
  def change
    create_table :manabs do |t|
      t.string :title
      t.string :manabi

      t.timestamps
    end
  end
end
