//
//  TimerView.swift
//  WorkRecordApp
//
//  Created by kazunari.ueeda on 2021/01/23.
//

import SwiftUI

struct TimerView: View {
    @EnvironmentObject var dataModel: DataModel
    
    var body: some View {
        VStack {
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
