class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :internal_id
      t.string :title
      t.boolean :title

      t.timestamps null: false
    end

    reversible do |action|
      action.up do
        Category.create_translation_table!(title: :string)
      end

      action.down do
        Category.drop_translation_table!
      end
    end
  end
end
