//  Copyright © 2025 ADA 4th Challenge4 Practice. All rights reserved.
struct DiaryViewState {
  let diaryTitle: String
  let diaryList: [Diary]

  func copy(diaryTitle: String? = nil, diaryList: [Diary]? = nil) -> DiaryViewState {
    return DiaryViewState(
      diaryTitle: diaryTitle ?? self.diaryTitle,
      diaryList: diaryList ?? self.diaryList
    )
  }
}

