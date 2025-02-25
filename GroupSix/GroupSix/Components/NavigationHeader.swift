//
//  NavigationHeader.swift
//  GroupSix
//
//  Created by Sandamal 014 on 2025-02-25.
//

import SwiftUI

struct NavigationHeader: View {
    var title: String

    var body: some View {
        HStack {
            Button(action: {
                print("Back button tapped")
            }) {
                Image(systemName: "chevron.left")
                    .foregroundColor(.black)
                    .font(.system(size: 20, weight: .medium))
            }

            Spacer()

            Text(title)
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(.black)

            Spacer()
        }
    }
}

struct NavigationHeader_Previews: PreviewProvider {
    static var previews: some View {
        NavigationHeader(title: "Navigation")
    }
}
