//
//  TimerView.swift
//  WorkRecordApp
//
//  Created by kazunari.ueeda on 2021/01/23.
//

import SwiftUI

struct TimerView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
            }
            .padding()
            .overlay(
                HStack {
                    Image("cloud")
                        .shadow(color: Color.black.opacity(0.09), radius: 5, x: 2, y: 5)
                        .offset(x: -25, y: -50)
                    
                    Spacer()
                    
                    VStack {
                        Image("cloud")
                            .shadow(color: Color.black.opacity(0.09), radius: 5, x: 2, y: 5)
                            .offset(x: 20, y: -70)
                        
                        Spacer()
                    }
                }, alignment: .bottom
            )
            
            VStack {
                HStack {
                    Text("ここにタイマー")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.leading, -75)
                }
                
                Divider()
            }
            .padding(25)
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
