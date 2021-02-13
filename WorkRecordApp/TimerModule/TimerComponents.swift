//
//  TimerComponents.swift
//  WorkRecordApp
//
//  Created by kazunari.ueeda on 2021/02/06.
//

import SwiftUI

struct TimerComponents: View {
    @State var start = true
    @State var to: CGFloat = 0
    @State var count = 0
    @State var time = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var hour: String
    var minute: String
    var second: String
    
    var body: some View {
        ZStack {
            VStack {
                ZStack {
                    Circle()
                        .trim(from: 0, to: 1)
                        .stroke(Color.black.opacity(0.09), style: StrokeStyle(lineWidth: 10, lineCap: .round))
                        .frame(width: 300, height: 300)
                    
                    Circle()
                        .trim(from: 0, to: self.to)
                        .stroke(Color("TimerColor"), style: StrokeStyle(lineWidth: 10, lineCap: .round))
                        .frame(width: 300, height: 300)
                        .rotationEffect(.init(degrees: -90))
                    
                    VStack {
                        Text(formatDatetimeToString(hour: hour, minute: minute, second: second))
                            .font(.system(size: 28))
                            .fontWeight(.regular)
                        
                        Text("🔔 終了時間")
                            .font(.system(size: 24))
                            .fontWeight(.regular)
                            .padding(.top)
                    }
                }
            }
        }
        .onReceive(self.time) { (_) in
            let limit = convertToSecond(hour: self.hour, minute: self.minute, second: self.second)
            if self.start {
                if limit != self.count {
                    self.count += 1
                    
//                    timerString = String(format: "%.2f", (Date().timeIntervalSince(Date())))
                    
                    withAnimation(.default) {
                        self.to = CGFloat(self.count) / CGFloat(limit)
                    }
                }
            }
        }
    }
}
