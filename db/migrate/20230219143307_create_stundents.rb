class CreateStundents < ActiveRecord::Migration[7.0]
  def change
    create_table :stundents do |t|
      t.string :name
      t.date :birth

      t.timestamps
    end
  end
end
