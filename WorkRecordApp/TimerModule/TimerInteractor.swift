//
//  TimerInteractor.swift
//  WorkRecordApp
//
//  Created by kazunari.ueeda on 2021/02/06.
//

import Foundation
import SwiftUI

class TimerInteractor {
    let model: DataModel
    
    init(model: DataModel) {
        self.model = model
    }
    
    func addNewReport() {
        self.model.addData()
    }
    
    func deleteReport(object: WorkedEntity) {
        self.model.deleteData(object: object)
    }
}
