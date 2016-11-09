class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :title
      t.string :identity
      t.string :color
      t.integer :internal_id

      t.timestamps null: false
    end

    reversible do |action|
      action.up do
        City.create_translation_table!(title: :string, identity: :string)
      end

      action.down do
        City.drop_translation_table!
      end
    end
  end
end
