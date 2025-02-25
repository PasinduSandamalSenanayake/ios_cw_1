//
//  LiveView.swift
//  GroupSix
//
//  Created by Manula 048 on 2025-02-24.
//

import SwiftUI

struct NewView : View {
    var body: some View{
        VStack(alignment: .leading){
            Text("Cafeteria")
                .font(.title)
                .bold()
            
            Text("GROUND FLOOR")
                .foregroundColor(.primaryBlue)
            
            HStack {
                Text("Free Space")
                Spacer()
                Text("40")
                    .foregroundColor(.green)
            }
            .padding(.top,5)
            
            HStack {
                Text("Occupied")
                Spacer()
                Text("110")
                    .foregroundColor(.red)
            }
            .padding(.top,5)
            
            HStack {
                Text("Capacity")
                Spacer()
                Text("150")
                    .foregroundColor(.primaryBlue)
            }
            .padding(.top,5)
            
            Button (action : {
                
            }) {
                HStack{
                    Image(systemName: "location.fill")
                    Text("Tap here to get directions")
                }
                .padding()
                .background(Color.primaryBlue.opacity(0.2))
                .cornerRadius(8)
            }
            padding(.top, 10)
            
            
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        .padding()
    }
}
#Preview{
    NewView()
}

