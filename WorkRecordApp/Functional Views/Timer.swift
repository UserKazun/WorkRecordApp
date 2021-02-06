//
//  Timer.swift
//  WorkRecordApp
//
//  Created by kazunari.ueeda on 2021/02/06.
//

import SwiftUI

struct Timer: View {
    var body: some View {
        ZStack {
            VStack {
                ZStack {
                    Circle()
                        .trim(from: 0, to: 1)
                        .stroke(Color.black.opacity(0.09), style: StrokeStyle(lineWidth: 25, lineCap: .round))
                        .frame(width: 280, height: 280)
                    
                    Circle()
                        .trim(from: 0, to: 0)
                        .stroke(Color.red, style: StrokeStyle(lineWidth: 25, lineCap: .round))
                        .frame(width: 280, height: 280)
                        .rotationEffect(.init(degrees: -90))
                    
                    VStack {
                        Text("カウント時間")
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
    }
}
