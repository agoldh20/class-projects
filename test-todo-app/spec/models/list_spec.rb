require 'rails_helper'

RSpec.describe List, type: :model do
  
  describe '#complete_all_tasks!' do
    it 'should return true if all tasks are completed' do
      list = List.create(name: "chores")
      task1 = Task.create(list_id: list.id, complete: false, name: "Take out the trash")
      task2 = Task.create(list_id: list.id, complete: false, name: "Mow the lawn")

      list.complete_all_tasks!
      list.tasks.each do |task|
        expect(task.complete).to eq(true)
      end
    end
  end

  describe '#snooze_all_tasks!' do
    it 'should push back the deadline by 1 hour' do
    due_time = 1.day.from_now
    list = List.create(name: "chores")
    task1 = Task.create(list_id: list.id, deadline: due_time, name: "Take out the trash")
    task2 = Task.create(list_id: list.id, deadline: due_time, name: "Mow the lawn")

      list.snooze_all_tasks!
      list.tasks.each do |task|
        expect(task.deadline).to eq(due_time + 1.hour)
      end
    end
  end

  describe '#total_duration' do
    list = List.create(name: "chores")
    task1 = Task.create(list_id: list.id, duration: 1, name: "Take out the trash")
    task2 = Task.create(list_id: list.id, duration: 3, name: "Mow the lawn")
    it 'should return the time to complete all the tasks' do

      expect(list.total_duration).to eq(4)
    end
  end

  describe '#incomplete_tasks' do
    list = List.create(name: "chores")
    task1 = Task.create(list_id: list.id, complete: false, name: "Take out the trash")
    task2 = Task.create(list_id: list.id, complete: true, name: "Mow the lawn")
    it 'should return Take out the trash item' do
      expect(list.incomplete_tasks).to eq([task1])
    end
  end

  describe '#favorite_tasks' do
    list = List.create(name: "chores")
    task1 = Task.create(list_id: list.id, favorite: true, name: "Mow the lawn")
    task2 = Task.create(list_id: list.id, favorite: false, name: "Take out the trash")
    it 'should return task1 as favorite' do
      expect(list.favorite_tasks).to eq([task1])
    end
  end
end