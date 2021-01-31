//
//  WorkedEntity.swift
//  WorkRecordApp
//
//  Created by kazunari.ueeda on 2021/01/31.
//

import SwiftUI
import RealmSwift

class WorkedEntity: Object, Identifiable {
    @objc dynamic var id: UUID = UUID()
    @objc dynamic var title = ""
    @objc dynamic var desc = ""
    @objc dynamic var time = Date()
}
