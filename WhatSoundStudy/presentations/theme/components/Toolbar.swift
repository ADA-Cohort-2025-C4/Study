//  Copyright © 2025 ADA 4th Challenge4 Practice. All rights reserved.
import SwiftUI

struct Toolbar<Leading: View, Trailing: View>: View {
  @EnvironmentObject var router: Router

  let title: String
  let titleColor: Color?
  let leading: () -> Leading
  let trailing: () -> Trailing
  let isPopButton: Bool

  init(
    title: String = "",
    titleColor: Color? = nil,
    isPopButton: Bool = true,
    @ViewBuilder leading: @escaping () -> Leading = { EmptyView() },
    @ViewBuilder trailing: @escaping () -> Trailing = { EmptyView() }
  ) {
    self.title = title
    self.titleColor = titleColor
    self.leading = leading
    self.trailing = trailing
    self.isPopButton = isPopButton
  }

  var body: some View {
    ZStack {
      HStack {
        // MARK: Leading
        if isPopButton {
          IconButton("chevron.left") {
            router.pop()
          }
        } else {
          leading()
        }

        Spacer()

        // MARK: Trailing
        trailing()
      }

      // MARK: Title
      if !title.isEmpty {
        Text(title)
          .fontWeight(.bold)
      }
    }
    .frame(height: 56)
  }
}

#Preview {
  BasePreview {
    Toolbar(
      title: "Preview",
      isPopButton: true,
      trailing: {
        IconButton("pencil") {}
      }
    )
  }
}

