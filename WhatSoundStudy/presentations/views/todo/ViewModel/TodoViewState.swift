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

//View에 보여줄 상태값만을 담음.즉, View는 이 상태를 기반으로 화면을 그리고 ViewModel은 이 값을 바꿔줌
//[Todo] 배열인거임
//func copy는 변경이 필요한 값만 바꾸고 나머지는 그대로 유지한 새로운 상태를 만들어주는 함수
//TodoViewState는 let 으로 선언된 불변 구조체라서 항상 새롭게 만든 상태로 return 갈아끼워줘야함! 그걸 쉽게 하는게 copy
// ?? 는 nil이면 오른쪽 값을 써라! 어쨌든 기존 상태에서 필요한 것만 바꾼 새상태를 만들어서 view에 넘겨주는 ViewState
