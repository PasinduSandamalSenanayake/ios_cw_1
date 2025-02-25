//
//  NextButton.swift
//  GroupSix
//
//  Created by Sandamal 014 on 2025-02-25.
//

import SwiftUI

struct NextButton: View {
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                print("Next button tapped")
            }) {
                HStack {
                    Text("Next")
                    Image(systemName: "chevron.right")
                }
                .font(.system(size: 18, weight: .medium))
                .foregroundColor(.blue)
                .padding()
            }
        }
    }
}

struct NextButton_Previews: PreviewProvider {
    static var previews: some View {
        NextButton()
    }
}
