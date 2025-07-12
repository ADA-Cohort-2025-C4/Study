//  Copyright © 2025 ADA 4th Challenge4 Practice. All rights reserved.
struct TodoViewState {
    let todoTitle: String
    let todoList: [Todo]
    
    func copy(todoTitle: String? = nil, todoList: [Todo]? = nil) -> TodoViewState {
        return TodoViewState (
            todoTitle: todoTitle ?? self.todoTitle,
            todoList: todoList ?? self.todoList
        )
    }
}
