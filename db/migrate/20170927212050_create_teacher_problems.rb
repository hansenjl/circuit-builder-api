class CreateTeacherProblems < ActiveRecord::Migration[5.1]
  def change
    create_table :teacher_problems do |t|
      t.integer :teacher_id
      t.integer :problem_id

      t.timestamps
    end
  end
end
