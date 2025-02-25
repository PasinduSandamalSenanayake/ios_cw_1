//
//  LegendItemView.swift
//  GroupSix
//
//  Created by Sandamal 014 on 2025-02-25.
//

import SwiftUI

struct LegendItemView: View {
    var color: Color
    var text: String

    var body: some View {
        HStack {
            Circle()
                .fill(color)
                .frame(width: 10, height: 10)
            Text(text)
                .font(.subheadline)
        }
    }
}

struct LegendItemView_Previews: PreviewProvider {
    static var previews: some View {
        LegendItemView(color: .red, text: "Sample Legend")
    }
}
