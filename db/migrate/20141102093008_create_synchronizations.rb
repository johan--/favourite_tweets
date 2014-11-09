class CreateSynchronizations < ActiveRecord::Migration
  def change
    create_table :synchronizations do |t|
      t.boolean :is_success, default: true

      t.timestamps
    end
  end
end
