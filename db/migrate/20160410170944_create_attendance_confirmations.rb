class CreateAttendanceConfirmations < ActiveRecord::Migration
  def change
    create_table :attendance_confirmations do |t|
      t.references :user, index: true, foreign_key: true
      t.references :event, index: true, foreign_key: true
      t.boolean :email_sent, default: false
      t.boolean :confirmed, default: false

      t.timestamps null: false
    end
  end
end
