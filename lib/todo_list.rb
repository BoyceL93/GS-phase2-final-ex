class TodoList
    def initialize
        @todo_list = []
    end

    def add(task)
        if @todo_list.include?(task)
            return "This task already exists"
        else
            @todo_list << task
        end
    end

    def incomplete
        return @todo_list
    end

    def task_done(completed_task)
        if @todo_list.include?(completed_task)
            @todo_list.delete(completed_task)
            return @todo_list
        else
            return "This task does not exist"
        end
    end

    def clear_todo
        @todo_list.clear
        return @todo_list
    end
end