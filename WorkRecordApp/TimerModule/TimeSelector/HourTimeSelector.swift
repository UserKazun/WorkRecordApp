//
//  HourTimeSelector.swift
//  WorkRecordApp
//
//  Created by kazunari.ueeda on 2021/01/31.
//

import SwiftUI

struct HourTimeSelector: View {
    @State var selected = "0"
    
    var body: some View {
        VStack {
            HStack {
                Text("Hour")
                    .font(Font.custom(FontsManager.Monstserrat.medium, size: 24))
                
                Spacer()
            }
            .padding(.horizontal)
            .padding(.top, 100)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(hour, id: \.self) { item in
                        Button(action: {
                            selected = item
                        }) {
                            Text("\(item)")
                                .modifier(SelectorButtonModifier())
                                .background(
                                    ZStack {
                                        Circle()
                                            .fill(Color("ButtonBackgroundColor").opacity(selected == item ? 1 : 0))
                                    }
                                )
                        }
                    }
                }
                .padding(30)
                .padding(.bottom, 10)
            }

        }
        .padding(.leading, 14)
    }
}

var hour = [
    "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
    "11", "12", "13", "14", "15", "16", "17", "18", "19", "20",
    "21", "22", "23", "23"
]
