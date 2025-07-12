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

//상태를 직접 바꾸지않고 기존 state를 복사 후 변경, emit으로 알림!
//state.copy(...) 는 불변 상태 관리
