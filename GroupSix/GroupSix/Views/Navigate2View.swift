//
//  Navigate2View.swift
//  GroupSix
//
//  Created by Sandamal 014 on 2025-02-25.
//

import SwiftUI

struct Navigate2View2: View {
    @State private var step1Completed = true
    @State private var step2Completed = true
    @State private var step3Completed = false
    @State private var step4Completed = false

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // Reusable Navigation Header
            NavigationHeader(title: "Navigation")

            Text("Description")
                .font(.system(size: 22, weight: .medium))

            Text("Could you please head towards the Faculty of Science and look for the elevator or staircase? Once you reach the 3rd floor, kindly make your way to Hall 44.")
                .font(.system(size: 16, weight: .regular))

            VStack(alignment: .leading, spacing: 8) {
                StepItemView(text: "Heading to the Faculty of Science", completed: step1Completed)
                StepItemView(text: "Look for the elevator or staircase", completed: step2Completed)
                StepItemView(text: "Go to the 3rd floor", completed: step3Completed)
                StepItemView(text: "Find Hall 44", completed: step4Completed)
            }
            .padding()

            Image("map2")
                .resizable()
                .scaledToFit()
                .frame(height: 310)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(maxWidth: .infinity, alignment: .center)

            HStack(spacing: 20) {
                LegendItemView(color: .red, text: "Path to elevator")
                LegendItemView(color: .green, text: "Path to staircase")
            }
            .padding()

            HStack {
                BackButton()
                Spacer()
                NextButton()
            }
        }
        .padding()
    }
}

struct Navigate2View2_Previews: PreviewProvider {
    static var previews: some View {
        Navigate2View2()
    }
}
