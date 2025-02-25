//
//  IntroView3.swift
//  GroupSix
//
//  Created by Sandamal 014 on 2025-02-18.
//

import SwiftUI

struct IntroView3: View {
    @State private var isStart = false
    var body: some View {
        NavigationStack{
            VStack(spacing: 0) {
                // Top Half (Blue Background with Image)
                VStack {
                    Spacer()
                    Image("coin")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 200)
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .frame(height: UIScreen.main.bounds.height * 0.45) // Adjusted height
                .background(Color.primaryBlue)
                
                // Bottom Half (White Background with Rounded Corners)
                VStack(alignment: .leading, spacing: 15) {
                    Text("💰Earn & Redeem Coins")
                        .font(.headline)
                        .bold()
                    
                    
                    
                    
                    VStack(alignment: .leading) {
                        Text("• Earn 3 coins everytime you scan a QR before entering and leaving.")
                        Text("• Redeem coins at the campus cafeteria or bookshop")
                        Text("(60 points = 1 rupee)")
                            .bold()
                        Text("• Daily limit : 30 points")
                        
                    }
                    
                    .padding(.bottom, 90)
                    
                    NavigationLink(destination: LoginView(),isActive: $isStart){
                        EmptyView()
                    }
                    
                    
                    
                    
                    Button(action: {
                        isStart = true
                    }) {
                        Text("Let's Start!")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding(.horizontal, 20)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .frame(height: UIScreen.main.bounds.height * 0.55)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous)) // Add corner radius
                .shadow(radius: 5)
            }
            .edgesIgnoringSafeArea(.all)
            .background(Color.primaryBlue)
        }
    }
}

struct IntroView3_Previews: PreviewProvider {
    static var previews: some View {
        IntroView3()
    }
}
