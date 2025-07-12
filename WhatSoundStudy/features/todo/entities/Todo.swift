//  Copyright © 2025 ADA 4th Challenge4 Practice. All rights reserved.
import SwiftUI

struct Todo {
    let id: UUID
    let title: String
    
    init(id: UUID = UUID(), title: String) {
        self.id = id
        self.title = title
    }
}

//UUID는 Universally Unique IDentifier 새로운 고유값 생성하는 것
//init 은 초기 상태를 지정 self는 구조체의 진짜 속성에 값을 채워주는 것
