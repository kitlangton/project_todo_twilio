Todo.destroy_all
Todo.create(task: "Wake Up", completion_date: Date.today)
Todo.create(task: "Sleep", completion_date: Date.today + 2)
Todo.create(task: "Eat Food", completion_date: Date.today + 1)
Todo.create(task: "Sleep", completion_date: Date.today - 2)
