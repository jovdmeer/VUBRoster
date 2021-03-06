class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.string :name
    end
    add_index(:courses, :name, :unique => true)
  end

  def self.down
    drop_table :courses
  end
end
