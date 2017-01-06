class CreateTestScaffolds < ActiveRecord::Migration[5.0]
  def change
    create_table :test_scaffolds do |t|
      t.string :title

      t.timestamps
    end
  end
end
