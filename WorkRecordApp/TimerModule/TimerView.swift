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
            HStack {
                Text("Home")
                    .font(Font.custom(FontsManager.Monstserrat.bold, size: 24))
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "gear")
                        .font(.system(size: 28, weight: .medium))
                        .foregroundColor(Color("textColor"))
                })
            }
            .padding(.horizontal)
            .padding(.leading, 14)
            .padding(.top, 30)
            
            HourTimeSelector()
            MinuteTimeSelector()
            SecondsTimeSelector()
            
            Spacer()
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
