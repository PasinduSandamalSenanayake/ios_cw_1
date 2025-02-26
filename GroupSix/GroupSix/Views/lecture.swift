//
//  lecture.swift
//  GroupSix
//
//  Created by Sheshami 029 on 2025-02-26.
//
import SwiftUI

struct LectureView: View {
    @State private var searchText: String = ""
    @State private var navigateToHome = false

    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Button(action: {
                    navigateToHome = true
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                        .font(.system(size: 20, weight: .medium))
                }

                Spacer()

                Text("Lecture Schedule")
                    .font(.system(size: 22, weight: .bold))

                Spacer()
            }
            .padding(.horizontal)
            .navigationDestination(isPresented: $navigateToHome) {
                            HomeView()
                        }
            

            HStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    
                    TextField("Search", text: $searchText)
                        .textFieldStyle(PlainTextFieldStyle())
                    
                    if !searchText.isEmpty {
                        Button(action: {
                            searchText = ""
                        }) {
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(.gray)
                        }
                    }
                    
                }
                .padding(10)
                .background(Color(UIColor.systemGray6))
                .cornerRadius(10)
                
                Spacer()
                
                Image(systemName: "line.horizontal.3.decrease.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.black)
                
            }
            .padding(.horizontal)
            

            
            LectureItemView(
                courseCode: "HNDSE24.1F",
                courseTitle: "VISUALIZATION & STORAGE",
                lecturer: "D.A DILSHAN",
                time: "8.30 AM - 11.30 AM",
                room: "PC 04",
                location: "4TH FLOOR"
            )

            LectureItemView(
                courseCode: "HNDSE24.2G",
                courseTitle: "MOBILE APP DEVELOPMENT",
                lecturer: "S.K PERERA",
                time: "1.00 PM - 3.00 PM",
                room: "PC 05",
                location: "3RD FLOOR"
            )
            
            LectureItemView(
                courseCode: "HNDSE24.3H",
                courseTitle: "DATA STRUCTURES & ALGORITHMS",
                lecturer: "R.M JAYASINGHE",
                time: "10.00 AM - 12.00 PM",
                room: "PC 06",
                location: "2ND FLOOR"
            )

            LectureItemView(
                courseCode: "HNDSE24.4J",
                courseTitle: "ARTIFICIAL INTELLIGENCE",
                lecturer: "P.A KUMARA",
                time: "2.00 PM - 5.00 PM",
                room: "PC 02",
                location: "1ST FLOOR"
            )



            Spacer()
        }
        .padding(.top)
        .navigationBarHidden(true)
        
        
    }
}



struct LectureView_Previews: PreviewProvider {
    static var previews: some View {
        LectureView()
    }
}
