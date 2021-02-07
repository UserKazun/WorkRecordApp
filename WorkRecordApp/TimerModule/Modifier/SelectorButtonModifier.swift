//
//  ButtonModifier.swift
//  WorkRecordApp
//
//  Created by kazunari.ueeda on 2021/01/31.
//

import SwiftUI

struct SelectorButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .font(Font.custom(FontsManager.Monstserrat.regular, size: 24))
            .foregroundColor(Color("textColor"))
            .frame(width: 36, height: 36)
            .clipShape(Circle())
    }
}
