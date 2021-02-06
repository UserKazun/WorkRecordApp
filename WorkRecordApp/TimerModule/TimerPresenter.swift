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
