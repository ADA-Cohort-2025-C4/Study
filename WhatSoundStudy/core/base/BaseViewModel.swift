//  Copyright © 2025 ADA 4th Challenge4 Practice. All rights reserved.
import SwiftUI

//@Published 로 선언된 상태를 보유하고 상태 변경을 관리하는 공통 ViewModel class임
class BaseViewModel<State>: ObservableObject {
  @Published private(set) var state: State

    //ViewModel 생성될 때 초기 상태를 설정할 수 있도록 함
  init(state: State) {
    self.state = state
  }
//SwiftUI의 View 갱신은 Main Thread 에서만 이루어져야 함
  func emit(_ newState: State) {
    if Thread.isMainThread {
      state = newState
    } else {
      DispatchQueue.main.sync {
        self.state = newState
      }
    }
  }
}

