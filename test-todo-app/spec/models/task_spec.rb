require 'rails_helper'

RSpec.describe Task, type: :model do
  describe '#toggle_complete' do
    it 'should switch complete to false if it began as true' do
      task = Task.create(complete: true)
      task.toggle_complete!
      expect(task.complete).to eq(false)
    end

    it 'should switch complete to true if it began as false' do
      task = Task.create(complete: false)
      task.toggle_complete!
      expect(task.complete).to eq(true)
    end
  end

  describe '#toggle_favorite!' do
    it 'should switch favorite to false if it began as true' do
      task = Task.create(favorite: true)
      task.toggle_favorite!
      expect(task.favorite).to eq(false)
    end

    it 'should switch favorite to false if it began as true' do
      task = Task.create(favorite: true)
      task.toggle_favorite!
      expect(task.favorite).to eq(false)
    end
  end

  describe '#overdue?' do
    it 'should return true if the deadline time is greater than now' do
      deadline = (Time.now - 1.hour)
      task = Task.create(deadline: deadline)
      expect(task.overdue?).to eq(true)
    end

    it 'should return true if the deadline time is less than now' do
      deadline = (Time.now + 1.hour)
      task = Task.create(deadline: deadline)
      expect(task.overdue?).to eq(false)
    end
  end

  describe '#increment_priority!' do
    it 'should increase priority by 1 until it reaches 10' do
      task = Task.create(priority: 5)
      task.increment_priority!
      expect(task.priority).to eq(6)
    end
  end

  describe '#decrement_priority!' do
    it 'should decrease priority by 1 until it reaches 1' do
      task = Task.create(priority: 5)
      task.decrement_priority!
      expect(task.priority).to eq(4)
    end
  end

  describe '#snooze_hour!' do
    it 'should add one hour to deadline' do
      time = Time.now
      task = Task.create(deadline: time + 1.hour)
      task.snooze_hour!
      expect(task.deadline).to eq(time + 2.hour)
    end
  end
end
