//
//  ContentView.swift
//  WorkRecordApp
//
//  Created by kazunari.ueeda on 2021/01/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var dataModel = DataModel()
    
    var body: some View {
        TimerView()
            .environmentObject(dataModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
