//
//  TimerView.swift
//  WorkRecordApp
//
//  Created by kazunari.ueeda on 2021/01/23.
//

import SwiftUI

struct TimerView: View {
    @ObservedObject var presenter: TimerPresenter
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "gear")
                        .font(.system(size: 24, weight: .medium))
                        .foregroundColor(Color("textColor"))
                })
            }
            .padding(.horizontal)
            .padding(.leading, 14)
            .padding(.top, 30)
            
            VStack {
                if presenter.isTimerFlg {
                    TimerComponents()
                        .padding(.top, 130)
                } else {
                    HourTimeSelector()
                    MinuteTimeSelector()
                    SecondsTimeSelector()
                }
            }
            
            Spacer()
            
            HStack {
                self.presenter.makeCancellButton()
                
                Spacer()
                
                self.presenter.makeStartButton()
            }
            .padding()
            .padding(.bottom, 50)
        }
    }
}
