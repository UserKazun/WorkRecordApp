//
//  ContentView.swift
//  WorkRecordApp
//
//  Created by kazunari.ueeda on 2021/01/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model: DataModel
    
    var body: some View {
        TimerView(presenter: TimerPresenter(interactor: TimerInteractor(model: model)))
    }
}
