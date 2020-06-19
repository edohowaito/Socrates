class CreateProblems < ActiveRecord::Migration[5.2]
  def change
    create_table :problems do |t|
      t.integer :user_id
      t.string :troubl
      t.string :clarification
      t.string :premise
      t.string :evidence
      t.string :origin
      t.string :result
      t.string :viewpoint
      t.string :assumption
      t.timestamps
    end
  end
end
