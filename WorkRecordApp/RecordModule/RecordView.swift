//
//  RecordView.swift
//  WorkRecordApp
//
//  Created by kazunari.ueeda on 2021/02/18.
//

import SwiftUI

struct RecordView: View {
    var body: some View {
        VStack {
            List {
                Section(header: Text("section 1")) {
                    ForEach(1 ..< 10) { _ in
                        Text("text")
                    }
                }
                Section(header: Text("section 2")) {
                    ForEach(1 ..< 10) { _ in
                        Text("text")
                    }
                }
            }
            .listStyle(InsetGroupedListStyle())
        }
    }
}

struct RecordView_Previews: PreviewProvider {
    static var previews: some View {
        RecordView()
    }
}
