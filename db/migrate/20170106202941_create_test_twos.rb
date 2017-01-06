class CreateTestTwos < ActiveRecord::Migration[5.0]
  def change
    create_table :test_twos do |t|
      t.string :title

      t.timestamps
    end
  end
end
