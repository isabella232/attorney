class CreateAttorneyDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :attorney_documents do |t|
      t.string :slug, null: false
      t.string :name
      t.text :content

      t.timestamps
    end

    add_index :attorney_documents, :slug, unique: true
  end
end
