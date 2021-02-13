//
//  TimerPresenter.swift
//  WorkRecordApp
//
//  Created by kazunari.ueeda on 2021/02/06.
//

import SwiftUI
import Combine

class TimerPresenter: ObservableObject {
    private let interactor: TimerInteractor
    private let router = TimerRouter()
    
    @Published var workedEntities: [WorkedEntity] = []
    @Published var isTimerFlg = false
    
    @Published var hourSelected = "0"
    @Published var minuteSelected = "0"
    @Published var secondSelected = "0"
    
    init(interactor: TimerInteractor) {
        self.interactor = interactor
    }
    
    func makeStartButton() -> some View {
        Button(action: startTimerAction) {
            Text("START")
                .font(Font.custom(FontsManager.Monstserrat.bold, size: 24))
                .padding(.trailing, 14)
                .foregroundColor(Color("StartButtonBackgroundColor"))
        }
    }
    
    func makeCancellButton() -> some View {
        Button(action: cancellTimerAction) {
            Text("CANCELL")
                .font(Font.custom(FontsManager.Monstserrat.bold, size: 24))
                .padding(.leading, 14)
                .foregroundColor(Color("DefaultButtonColor"))
        }
    }
    
    func setHourSelector(selected: String) {
        hourSelected = selected
    }
    
    func getHourSelector() -> String {
        return hourSelected
    }
    
    func setMinuteSelector(selected: String) {
        minuteSelected = selected
    }
    
    func getMinuteSelector() -> String {
        return minuteSelected
    }
    
    func setSecondsSelector(selected: String) {
        secondSelected = selected
    }
    
    func getSecondSelector() -> String {
        return secondSelected
    }
    
    private func startTimerAction() {
        isTimerFlg = true
    }
    
    private func cancellTimerAction() {
        isTimerFlg = false
    }
    
    func linkBuilder<Content: View>(for workedEntitiy: WorkedEntity, @ViewBuilder content: () -> Content) -> some View {
        NavigationLink(destination: router.makeDetailView(for: workedEntitiy, model: interactor.model)) {
            content()
        }
    }
}
