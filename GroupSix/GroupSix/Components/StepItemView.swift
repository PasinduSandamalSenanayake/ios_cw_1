//
//  StepItemView.swift
//  GroupSix
//
//  Created by Sandamal 014 on 2025-02-25.
//

import SwiftUI

struct StepItemView: View {
    var text: String
    var completed: Bool

    var body: some View {
        HStack {
            Image(systemName: completed ? "checkmark.circle.fill" : "circle")
                .foregroundColor(completed ? .green : .gray)
            Text(text)
                .foregroundColor(.black)
        }
    }
}

struct StepItemView_Previews: PreviewProvider {
    static var previews: some View {
        StepItemView(text: "Sample Step", completed: true)
    }
}
