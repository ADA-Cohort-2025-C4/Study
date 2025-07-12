//  Copyright © 2025 ADA 4th Challenge4 Practice. All rights reserved.
import SwiftUI

struct TodoView: View {
    var body: some View {
        BaseView(
            create: { TodoViewModel() }
        ) { viewModel, state in
            VStack(spacing: 0) {
                //MARK: Toolbar
                Toolbar(title: "Todo")
                
                //MARK: TextField
                HStack {
                    TextField("Write todo title", text: Binding(
                        get: { state.todoTitle},
                        set: viewModel.setTodoTitle
                    ))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    IconButton("plus") {
                        viewModel.add()
                    }
                }
                .padding(.leading, 16)
                Divider()
                
                if state.todoList.isEmpty {
                    //MARK: Empty
                    Spacer()
                    Text("No Todo")
                        .foregroundStyle(.gray)
                } else {
                    //MARK: Todo List
                    ForEach(state.todoList, id: \.id) { todo in
                        HStack(spacing: 0) {
                            Text(todo.title)
                            Spacer()
                            IconButton("trash") {
                                viewModel.delete(todo)
                            }
                        }
                        .padding(.leading, 16)
                    }
                }
                
                Spacer()
            }
        }
        
    }
}


#Preview {
    BasePreview {
        TodoView()
    }
}
