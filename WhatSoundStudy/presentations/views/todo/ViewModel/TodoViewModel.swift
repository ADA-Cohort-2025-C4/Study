//  Copyright © 2025 ADA 4th Challenge4 Practice. All rights reserved.
final class TodoViewModel: BaseViewModel<TodoViewState> {
    init() {
        super.init(state: .init(
            todoTitle: "", todoList: []
        ))
    }
    
    func setTodoTitle(_ todoTitle: String) {
        emit(state.copy(todoTitle: todoTitle))
    }
    
    func add() {
        if state.todoTitle.isEmpty { return }
        emit(state.copy(
            todoTitle: "",
            todoList: state.todoList + [Todo(title: state.todoTitle)]
        ))
    }
    
    func delete(_ todo: Todo) {
        emit(state.copy(
            todoList: state.todoList.filter {$0.id != todo.id }
        ))
    }
}
