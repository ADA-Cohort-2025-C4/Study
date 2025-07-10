//  Copyright © 2025 ADA 4th Challenge4 Practice. All rights reserved.
import SwiftUI

struct Tile: View {
  var title: String
  var subtitle: String?
  var action: () -> Void

  var body: some View {
    Button(action: action) {
      HStack {
        Text(title)
        Spacer()
        if subtitle != nil {
          Text(subtitle!)
            .opacity(0.75)
        }
      }
    }
  }
}

#Preview {
  Tile(title: "Diary View", subtitle: "Isla", action: {})
}

