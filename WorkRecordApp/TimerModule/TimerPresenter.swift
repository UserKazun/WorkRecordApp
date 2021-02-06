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
    
    init(interactor: TimerInteractor) {
        self.interactor = interactor
    }
    
    func addNewReport() {
        interactor.addNewReport()
    }
    
    func deleteReport(object: WorkedEntity) {
        interactor.deleteReport(object: object)
    }
    
    func linkBuiler<Content: View>(for workedEntitiy: WorkedEntity, @ViewBuilder content: () -> Content) -> some View {
        NavigationLink(destination: router.makeDetailView(for: workedEntitiy, model: interactor.model)) {
            content()
        }
    }

}
