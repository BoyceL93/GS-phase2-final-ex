require 'todo_list'

RSpec.describe TodoList do
    context "given a new task" do
        it "adds task to the todo list" do
            list1 = TodoList.new
            result = list1.add('finish coding exercise')
            expect(result).to eq ["finish coding exercise"]
        end
    end

    it "returns the incomplete tasks" do
        list1 = TodoList.new
        list1.add('a task')
        list1.add('another task')
        result = list1.incomplete
        expect(result).to eq ['a task', 'another task']
    end

    context "when given a task that already exists" do
        it "returns an error message" do
            list1 = TodoList.new
            list1.add('finish coding exercise')
            result = list1.add('finish coding exercise')
            expect(result).to eq "This task already exists"
        end
    end

    context "when a task is complete" do
        it "removes the task from the todo list" do
            list1 = TodoList.new
            list1.add('complete rdr2')
            result = list1.task_done('complete rdr2')
            expect(result).to eq []
        end
    end

    context "when trying to complete a task that does not exist" do
        it "returns an error message" do
            list1 = TodoList.new
            result = list1.task_done('Feed the cat')
            expect(result).to eq "This task does not exist"
        end
    end

    context "when we want to clear the todolist" do
        it "empties the array" do
            list1 = TodoList.new
            list1.add('Order the weekly shop')
            result = list1.clear_todo
            expect(result).to eq []
        end
    end
end