//
//  navigate2.5View.swift
//  GroupSix
//
//  Created by Manula 048 on 2025-02-27.
//

import SwiftUI

struct Navigate2NewView: View {
    @State private var step1Completed = true
    @State private var step2Completed = true
    @State private var step3Completed = true
    @State private var step4Completed = false
//    @State private var isNavigating = false
    @State private var navigateToHome = false

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 16) {
                HStack {
                    Button(action: {
                        navigateToHome = true
                    }) {Image(systemName: "chevron.left")
                        Text("Back")
                            .font(.system(size: 18, weight: .medium))
                            .foregroundColor(.blue)
//                            .padding()
                            
                    }
                }
                 
                        .navigationDestination(isPresented: $navigateToHome) {
                                        HomeView()
                                    }
                HStack {
                    Spacer()
                    
                    Text("Navigation")
                        .font(.system(size: 28, weight: .bold))
                        .foregroundColor(.black)
                        .padding(.horizontal)
                    
                    Spacer()
                }
                
                Text("Steps to follow:")
                    .font(.system(size: 22, weight: .medium))
                
//                HStack {
//                    Button(action: {
//                        navigateToHome = true
//                    }) {
//                        Image(systemName: "chevron.left")
//                            .foregroundColor(.black)
//                            .font(.system(size: 20, weight: .medium))
//                    }
//
//                    Spacer()
//
//                    Text("Navigation")
//                        .font(.system(size: 28, weight: .bold))
//
//                    Spacer()
//                }
//                .navigationDestination(isPresented: $navigateToHome) {
//                                HomeView()
//                }
//                
//                HStack{
//                    Text("Steps to follow:")
//                        .font(.system(size: 22, weight: .medium))
//                }
//                .padding(.top)
                    
                
//                Text("Could you please head towards the Faculty of Science and look for the elevator or staircase? Once you reach the 3rd floor, kindly make your way to Hall 44.")
//                    .font(.system(size: 16, weight: .regular))
                
                VStack(alignment: .leading, spacing: 8) {
                    stepItem(text: "Heading to the Faculty of Science", completed: step1Completed)
                    stepItem(text: "Look for the elevator or staircase", completed: step2Completed)
                    stepItem(text: "Go to the 3rd floor", completed: step3Completed)
                    stepItem(text: "Head over to hall 44", completed: step4Completed)
                }
                .padding()
                NavigationLink(destination: Navigate3View()){
                    Image("map3_new")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 350)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                
                HStack(spacing: 20) {
                    legendItem(color: .red, text: "elevator")
                    legendItem(color: .green, text: "staircase")
                    legendItem(color: .purple, text: "Hall 44")
                }
                .padding()

                
//                .navigationDestination(isPresented: $isNavigating) {
//                    Navigate3View()
//                }
//
//                HStack {
//                    Spacer()
//
//                    Button(action: {
//                        print("Next button tapped")
//                        isNavigating = true
//                    }) {
//                        HStack {
//                            Text("Next")
//                            Image(systemName: "chevron.right")
//                        }
//                        .font(.system(size: 18, weight: .medium))
//                        .foregroundColor(.blue)
//                        .padding()
//                    }
//                }
            }
            .padding()
        }
    }

    func stepItem(text: String, completed: Bool) -> some View {
        HStack {
            Image(systemName: completed ? "checkmark.circle.fill" : "circle")
                .foregroundColor(completed ? .green : .gray)
            Text(text)
                .foregroundColor(.black)
        }
    }

    func legendItem(color: Color, text: String) -> some View {
        HStack {
            Circle()
                .fill(color)
                .frame(width: 10, height: 10)
            Text(text)
                .font(.subheadline)
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct Navigate2NewView_Previews: PreviewProvider {
    static var previews: some View {
        Navigate2NewView()
    }
}
