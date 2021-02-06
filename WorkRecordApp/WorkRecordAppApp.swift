//
//  WorkRecordAppApp.swift
//  WorkRecordApp
//
//  Created by kazunari.ueeda on 2021/01/22.
//

import SwiftUI

@main
struct WorkRecordAppApp: App {
    @StateObject var dataModel = DataModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(dataModel)
        }
    }
}
