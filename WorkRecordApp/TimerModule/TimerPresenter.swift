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
    
    //private var cancellables = Set<AnyCancellable>()
    
//    @Published var timerHour: String = "0"
//    @Published var timerMinute: String = "0"
//    @Published var timerSeconds: String = "0"
//
//    let setTimerHour: Binding<String>
//    let setTimerMinute: Binding<String>
//    let setTimerSeconds: Binding<String>
    
    @Published var workedEntities: [WorkedEntity] = []
    @Published var isTimerFlg = false
    
    @Published var hourSelected = "0"
    @Published var minuteSelected = "0"
    @Published var secondsSelected = "0"
    
    init(interactor: TimerInteractor) {
        self.interactor = interactor
        
//        setTimerHour = Binding<String> (
//            get: { interactor.timerHour },
//            set: { interactor.setTimerHour($0) }
//        )
//        setTimerMinute = Binding<String> (
//            get: { interactor.timerMinute },
//            set: { interactor.setTimerMinute($0) }
//        )
//        setTimerSeconds = Binding<String> (
//            get: { interactor.timerSeconds},
//            set: { interactor.setTimerSeconds($0) }
//        )
//
//        interactor.timerHourPublisher
//            .assign(to: \.timerHour, on: self)
//            .store(in: &cancellables)
//
//        interactor.timerHourPublisher
//            .assign(to: \.timerMinute, on: self)
//            .store(in: &cancellables)
//
//        interactor.timerSecondsPublisher
//            .assign(to: \.timerSeconds, on: self)
//            .store(in: &cancellables)
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
