class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.belongs_to :category, index: true, foreign_key: true
      t.string :title
      t.string :slug
      t.text :description
      t.text :summary
      t.decimal :amount
      t.decimal :rate_exchange
      t.string :external_url
      t.datetime :start_at
      t.datetime :end_at
      t.integer :status
      t.boolean :featured

      t.timestamps null: false
    end

    add_index :projects, :slug, unique: true

    reversible do |action|
      action.up do
        Project.create_translation_table!(title: :string, description: :text, summary: :text)
      end

      action.down do
        Project.drop_translation_table!
      end
    end
  end
end
