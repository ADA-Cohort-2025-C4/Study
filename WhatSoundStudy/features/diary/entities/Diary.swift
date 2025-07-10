//  Copyright © 2025 ADA 4th Challenge4 Practice. All rights reserved.
import SwiftUI

struct Diary {
  let id: UUID
  let title: String

  init(id: UUID = UUID(), title: String) {
    self.id = id
    self.title = title
  }
}
