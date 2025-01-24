class Task < ApplicationRecord
  belongs_to :user

  validates :title, presence: true

  after_create :broadcast_task
  after_update :broadcast_replace_task
  after_destroy :broadcast_remove_task

  def broadcast_task
    broadcast_append_to("tasks", partial: "tasks/task", locals: { task: self })
  end

  def broadcast_replace_task
    broadcast_replace_to("tasks", partial: "tasks/task", locals: { task: self })
  end

  def broadcast_remove_task
    broadcast_remove_to("tasks", partial: "tasks/task", locals: { task: self })
  end
end
