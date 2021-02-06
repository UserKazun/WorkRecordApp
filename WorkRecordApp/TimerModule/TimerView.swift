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
//                HourTimeSelector()
//                MinuteTimeSelector()
//                SecondsTimeSelector()
                
                Timer()
                    .padding(.top, 130)
            }
            
            
            Spacer()
            
            HStack {
                Button(action: {
                    
                }) {
                    Text("CANCELL")
                        .font(Font.custom(FontsManager.Monstserrat.bold, size: 24))
                        .padding(.leading, 14)
                        .foregroundColor(Color("DefaultButtonColor"))
                }
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("START")
                        .font(Font.custom(FontsManager.Monstserrat.bold, size: 24))
                        .padding(.trailing, 14)
                        .foregroundColor(Color("StartButtonBackgroundColor"))
                }
            }
            .padding()
            .padding(.bottom, 50)
        }
    }
}
