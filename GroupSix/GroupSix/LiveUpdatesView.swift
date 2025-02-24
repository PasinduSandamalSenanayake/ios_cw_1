//
//  LiveUpdatesView.swift
//  GroupSix
//
//  Created by Manula 048 on 2025-02-24.
//

import SwiftUI

struct LiveUpdatesView : View {
    @State private var selectedFaculty : String? = nil
    @State private var selectedLocation : String? = nil
    
    var body : some View {
        VStack{
            HStack{
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width:40, height:40)
                Text("Good Morning")
                    .font(.headline)
                Text("Manula Rathnayake")
                    .bold()
                Spacer()
                Text("38 coins")
                    .bold()
                    .foregroundColor(.yellow)
                
            }
            .padding()
            
            Menu {
                Button("Faculty of Engineering"){
                    selectedFaculty = "Faculty of Engineering"
                }
                Button("Faculty of Education"){
                    selectedFaculty = "Faculty of Education"
                }
                Button("Faculty of Science"){
                    selectedFaculty = "Faculty of Science"
                }
                Button("Faculty of Medicine"){
                    selectedFaculty = "Faculty of Medicine"
                }
                Button("Faculty of Computing"){
                    selectedFaculty = "Faculty of Computing"
                }
            } label: {
                HStack {
                    Text(selectedFaculty ?? "Select the faculty")
                    Spacer()
                    Image(systemName: "chevron.down")
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
            }
            .padding(.horizontal)
            
            Menu {
                Button("Cafeteria"){
                    selectedLocation = "Cafeteria"
                }
                Button("Faculty of Education"){
                    selectedFaculty = "Faculty of Education"
                }
                Button("Faculty of Science"){
                    selectedFaculty = "Faculty of Science"
                }
                Button("Faculty of Medicine"){
                    selectedFaculty = "Faculty of Medicine"
                }
                Button("Faculty of Computing"){
                    selectedFaculty = "Faculty of Computing"
                }
            } label: {
                HStack {
                    Text(selectedLocation ?? "Select the location")
                    Spacer()
                    Image(systemName: "chevron.down")
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
            }
            .padding(.horizontal)
            
            if selectedFaculty == "Faculty of Engineering" && selectedLocation == "Cafeteria"{
                LiveView()
            }
            Spacer()
        }
        .padding()
    }
    
}

struct LiveView : View {
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
    LiveUpdatesView()
}
