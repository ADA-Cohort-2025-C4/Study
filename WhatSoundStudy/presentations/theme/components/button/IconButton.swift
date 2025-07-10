//  Copyright © 2025 ADA 4th Challenge4 Practice. All rights reserved.
import SwiftUI

struct IconButton: View {
  let icon: String
  let color: Color?
  let padding: CGFloat?
  let disabled: Bool
  let isSystemImage: Bool
  let action: () -> Void

  var _color: Color {
    if disabled { return .gray }
    return color ?? .accentColor
  }

  init(
    _ icon: String,
    color: Color? = nil,
    padding: CGFloat? = nil,
    disabled: Bool = false,
    isSystemImage: Bool = true,
    action: @escaping () -> Void
  ) {
    self.icon = icon
    self.color = color
    self.padding = padding
    self.disabled = disabled
    self.isSystemImage = isSystemImage
    self.action = action
  }

  var body: some View {
    Button(action: action) {
      let image: Image = isSystemImage
        ? Image(systemName: icon)
        : Image(icon)

      image
        .renderingMode(.template)
        .resizable()
        .scaledToFit()
        .foregroundColor(_color)
        .padding(padding ?? (isSystemImage ? 20 : 16))
        .frame(width: 56, height: 56)
    }.disabled(disabled)
  }
}

#Preview {
  BasePreview {
    ZStack {
      Color(.gray)
      IconButton("chevron.right") {}
    }
  }
}

