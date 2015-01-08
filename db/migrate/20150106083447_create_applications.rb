class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :name
      t.text :description
      t.string :url
      t.integer :creator
      t.references :organization, index: true
      t.string   :point_of_contact
      t.string   :email
      t.time     :prefered_contact_time

      t.timestamps
    end
  end
end
