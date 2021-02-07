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
                .padding(.bottom, 30)
            }

        }
        .padding(.leading, 14)
    }
}


