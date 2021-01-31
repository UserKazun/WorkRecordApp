//
//  WorkRecordAppApp.swift
//  WorkRecordApp
//
//  Created by kazunari.ueeda on 2021/01/22.
//

import SwiftUI

@main
struct WorkRecordAppApp: App {
    let dateModel = DataModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(dateModel)
        }
    }
}
