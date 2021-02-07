//
//  TimerView.swift
//  WorkRecordApp
//
//  Created by kazunari.ueeda on 2021/01/23.
//

import SwiftUI

struct TimerView: View {
    @ObservedObject var presenter: TimerPresenter
    
//    @State var hourSelected = "0"
//    @State var minuteSelected = "0"
//    @State var secondsSelected = "0"
    
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
                    TimerComponents(hour: presenter.hourSelected, minute: presenter.minuteSelected, seconds: presenter.secondsSelected)
                        .padding(.top, 130)
                } else {
                    VStack {
                        HStack {
                            Text("Hour")
                                .font(Font.custom(FontsManager.Monstserrat.medium, size: 24))
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                        .padding(.top, 60)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(hour, id: \.self) { item in
                                    Button(action: {
                                        presenter.hourSelected = item
                                    }) {
                                        Text("\(item)")
                                            .modifier(SelectorButtonModifier())
                                            .background(
                                                ZStack {
                                                    Circle()
                                                        .fill(Color("ButtonBackgroundColor").opacity(presenter.hourSelected == item ? 1 : 0))
                                                }
                                            )
                                    }
                                }
                            }
                            .padding(30)
                            .padding(.bottom, 30)
                        }

                    }
                    .padding(.leading, 14)
                    
                    VStack {
                        HStack {
                            Text("Minute")
                                .font(Font.custom(FontsManager.Monstserrat.medium, size: 24))
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                        .padding(.top, 10)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(minute, id: \.self) { item in
                                    Button(action: {
                                        presenter.minuteSelected = item
                                    }, label: {
                                        Text("\(item)")
                                            .modifier(SelectorButtonModifier())
                                            .background(
                                                ZStack {
                                                    Circle()
                                                        .fill(Color("ButtonBackgroundColor").opacity(presenter.minuteSelected == item ? 1 : 0))
                                                }
                                            )
                                    })
                                }
                            }
                            .padding(30)
                            .padding(.bottom, 30)
                        }

                    }
                    .padding(.leading, 14)
                    
                    VStack {
                        HStack {
                            Text("Seconds")
                                .font(Font.custom(FontsManager.Monstserrat.medium, size: 24))
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                        .padding(.top, 10)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(seconds, id: \.self) { item in
                                    Button(action: {
                                        presenter.secondsSelected = item
                                    }, label: {
                                        Text("\(item)")
                                            .modifier(SelectorButtonModifier())
                                            .background(
                                                ZStack {
                                                    Circle()
                                                        .fill(Color("ButtonBackgroundColor").opacity(presenter.secondsSelected == item ? 1 : 0))
                                                }
                                            )
                                    })
                                }
                            }
                            .padding(30)
                            .padding(.bottom, 30)
                        }

                    }
                    .padding(.leading, 14)
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

var hour = [
    "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
    "11", "12", "13", "14", "15", "16", "17", "18", "19", "20",
    "21", "22", "23", "23"
]

var minute = [
    "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
    "11", "12", "13", "14", "15", "16", "17", "18", "19", "20",
    "21", "22", "23", "24", "25", "26", "27", "28", "29", "30",
    "31", "32", "33", "34", "35", "36", "37", "38", "39", "40",
    "41", "42", "43", "44", "45", "46", "47", "48", "49", "50",
    "51", "52", "53", "54", "55", "56", "57", "58", "59"
]

var seconds = [
    "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
    "11", "12", "13", "14", "15", "16", "17", "18", "19", "20",
    "21", "22", "23", "24", "25", "26", "27", "28", "29", "30",
    "31", "32", "33", "34", "35", "36", "37", "38", "39", "40",
    "41", "42", "43", "44", "45", "46", "47", "48", "49", "50",
    "51", "52", "53", "54", "55", "56", "57", "58", "59"
]

