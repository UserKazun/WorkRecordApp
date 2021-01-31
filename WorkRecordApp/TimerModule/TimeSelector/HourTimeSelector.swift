//
//  HourTimeSelector.swift
//  WorkRecordApp
//
//  Created by kazunari.ueeda on 2021/01/31.
//

import SwiftUI

struct HourTimeSelector: View {
    @State var selected = 0
    
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
                    ForEach(0 ..< 24) { item in
                        Button(action: {
                            selected = item
                        }, label: {
                            Text("\(item)")
                                .modifier(SelectorButtonModifier())
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
