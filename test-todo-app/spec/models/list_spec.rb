require 'rails_helper'

RSpec.describe List, type: :model do
  
  describe '#complete_all_tasks!' do
    it 'should return true if all tasks are completed' do
      list = List.new(name: "chores")
      task1 = Task.new(list_id: list.id, complete: false)
      task2 = Task.new(list_id: list.id, complete: false)

      list.complete_all_tasks!
      list.tasks.each do |task|
        expect(task.complete).to eq(true)
      end
    end
  end

  describe '#snooze_all_tasks!' do
    due_time = 1.day.from_now
    list = List.new(name: "chores")
    task1 = Task.new(list_id: list.id, deadline: due_time)
    task2 = Task.new(list_id: list.id, deadline: due_time)

    list.snooze_all_tasks
    list.tasks.each do |task|
      
    end
  end

  describe '#total_duration' do
    list = List.new(name: "chores")
    task1 = Task.new(list_id: list.id, complete: false)
    task2 = Task.new(list_id: list.id, complete: false)
  end

  describe '#incomplete_tasks' do
    list = List.new(name: "chores")
    task1 = Task.new(list_id: list.id, complete: false)
    task2 = Task.new(list_id: list.id, complete: false)
  end

  describe '#favorite_tasks' do
    list = List.new(name: "chores")
    task1 = Task.new(list_id: list.id, complete: false)
    task2 = Task.new(list_id: list.id, complete: false)
  end
end