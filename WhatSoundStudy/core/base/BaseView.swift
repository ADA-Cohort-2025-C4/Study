//  Copyright © 2025 ADA 4th Challenge4 Practice. All rights reserved.
import SwiftUI

//Content - 실젲로 화면에 그려질 View, State- 화면 상태 데이터 구조, ViewModel - 상태를 관리하는 ViewModel
//Builder- ViewModel 과 State를 받아서 실제로 그릴 View를 생성하는 함수
typealias Builder<Content, S, VM> = (_ viewModel: VM, _ state: S) -> Content

struct BaseView<Content: View, State: Any, ViewModel: BaseViewModel<State>>: View {
  @StateObject private var viewModel: ViewModel
  let builder: Builder<Content, State, ViewModel>
  let navigationBarHidden: Bool
  let navigationBarBackButtonHidden: Bool

  init(
    //@escaping은 클로저가 나중에 비동기적으로 호출될 수 있음을 의미
    create: @escaping () -> ViewModel,
    builder: @escaping Builder<Content, State, ViewModel>,
    navigationBarHidden: Bool = true,
    navigationBarBackButtonHidden: Bool = true
  ) {
    _viewModel = StateObject(wrappedValue: create())
    self.builder = builder
    self.navigationBarHidden = navigationBarHidden
    self.navigationBarBackButtonHidden = navigationBarBackButtonHidden
  }

  var body: some View {
    Layout {
      builder(viewModel, viewModel.state)
        .navigationBarBackButtonHidden(navigationBarBackButtonHidden)
        .navigationBarHidden(navigationBarHidden)
    }
  }
}

