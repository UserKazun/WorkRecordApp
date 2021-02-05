//
//  MinuteTimeSelector.swift
//  WorkRecordApp
//
//  Created by kazunari.ueeda on 2021/01/31.
//

import SwiftUI

struct MinuteTimeSelector: View {
    @State var selected = "0"
    
    var body: some View {
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
                            selected = item
                        }, label: {
                            Text("\(item)")
                                .modifier(SelectorButtonModifier())
                                .background(
                                    ZStack {
                                        Circle()
                                            .fill(Color("ButtonBackgroundColor").opacity(selected == item ? 1 : 0))
                                    }
                                )
                        })
                    }
                }
                .padding(30)
                .padding(.bottom, 10)
            }

        }
        .padding(.leading, 14)
    }
}

var minute = [
    "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
    "11", "12", "13", "14", "15", "16", "17", "18", "19", "20",
    "21", "22", "23", "24", "25", "26", "27", "28", "29", "30",
    "31", "32", "33", "34", "35", "36", "37", "38", "39", "40",
    "41", "42", "43", "44", "45", "46", "47", "48", "49", "50",
    "51", "52", "53", "54", "55", "56", "57", "58", "59"
]
