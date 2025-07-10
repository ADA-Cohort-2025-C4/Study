//  Copyright © 2025 ADA 4th Challenge4 Practice. All rights reserved.

import SwiftUI

struct Layout<Content: View>: View {
  @ViewBuilder let content: () -> Content

  var body: some View {
    content()
      .frame(maxWidth: .infinity, maxHeight: .infinity)
//      .background(
//        Color(.white)
//          .ignoresSafeArea()
//      )
  }
}

#Preview {
  BasePreview {
    Layout {
      Text("Hello")
    }
  }
}

