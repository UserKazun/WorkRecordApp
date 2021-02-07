//
//  TimerEntity.swift
//  WorkRecordApp
//
//  Created by kazunari.ueeda on 2021/02/07.
//

import SwiftUI
import Combine

final class TimerEntity: ObservableObject {
    @Published var hour: String = ""
    @Published var minute: String = ""
    @Published var seconds: String = ""
}
