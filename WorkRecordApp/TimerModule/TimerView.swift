//
//  TimerView.swift
//  WorkRecordApp
//
//  Created by kazunari.ueeda on 2021/01/23.
//

import SwiftUI

struct TimerView: View {
    var body: some View {
        VStack(spacing: 40) {
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
                HStack(spacing: 30) {
                    Text("ここにタイマー")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.leading, -35)
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "play.fill")
                            .font(.title)
                            .foregroundColor(Color("PrimaryColor"))
                            .padding(.leading, 35)
                    })
                }
                
                Divider()
            }
            .padding(25)
            
            VStack {
                Text("Music Player")
                    .foregroundColor(Color.white)
            }
            .padding()
            .padding(.bottom, 50)
            .background(Color.black)
            .cornerRadius(25)
            .padding(.vertical)
            //.padding(.bottom)
            .padding(.horizontal, 55)
            
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
