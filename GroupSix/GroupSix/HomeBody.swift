import SwiftUI

struct HomeBody: View {
    @State private var selectedFaculty = "Select the faculty"
    @State private var selectedLocation = "Select the location"
    @State private var isNavigating = false

    let faculties = ["Faculty of Engineering", "Faculty of Science", "Faculty of Business", "Faculty of Medicine"]
    let locations = ["Cafeteria", "Hall 01", "Hall 12", "Hall 44"]
    
    let list_of_faculties = [
            "Faculty of Engineering",
            "Faculty of Education",
            "Faculty of Science",
            "Faculty of Medicine",
            "Faculty of Computing"
        ]

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 10) {
                    UserProfileHeader()
                    
                    HStack{
                        Image(systemName: "book.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding()
                        
                        Text("Lecture Schedule")
                            .font(.headline)
                            
                        Spacer()
                        
                        NavigationLink(destination : LectureView()){
                            Image(systemName: "chevron.right")
                                .padding()
                        }
                        
                    }
                    .padding(7)
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(radius: 5)
                    .padding(.horizontal)

                    
                Menu {
                    ForEach(faculties, id: \.self) { faculty in
                        Button(faculty) {
                            selectedFaculty = faculty
                        }
                    }
                } label: {
                    HStack {
                        Text(selectedFaculty)
                            .foregroundColor(.black)
                        Spacer()
                        Image(systemName: "chevron.down")
                            .foregroundColor(.gray)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 1)
                }
                .padding(.horizontal)

                    
                Menu {
                    ForEach(locations, id: \.self) { location in
                        Button(location) {
                            selectedLocation = location
                        }
                    }
                } label: {
                    HStack {
                        Text(selectedLocation)
                            .foregroundColor(.black)
                        Spacer()
                        Image(systemName: "chevron.down")
                            .foregroundColor(.gray)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 1)
                }
                .padding(.horizontal)

                    
                Button(action: {
                    isNavigating = true
                }) {
                    Text("Search")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.primaryBlue)
                        .cornerRadius(20)
                }
                .padding(.horizontal)
                .padding(.bottom, 20)
                    
                    
                NavigationLink(isActive: $isNavigating) {
                    Navigate1View()
                } label: {
                    EmptyView()
                }

                Image("map")
                    .resizable()
                    .aspectRatio(10/9, contentMode: .fit)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    .padding(.horizontal)

                HStack {
                    Image(systemName: "mappin.and.ellipse")
                        .foregroundColor(.blue)
                        .font(.subheadline)
                    Text("Google Map")
                        .font(.subheadline)
                        .foregroundColor(.blue)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .center)

                
                VStack(spacing: 5) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.white)
                            .shadow(radius: 5)
                            .frame(height: 270)

                        VStack {
                            HStack(spacing: 10) {
                                buildingView(number: "2")
                                buildingView(number: "3")
                                buildingView(number: "4")
                            }
                            HStack(spacing: 10) {
                                buildingView(number: "1", height: 100)
                                Spacer()
                                buildingView(number: "5", height: 100)
                            }
                            HStack {
                                Spacer()
                                buildingView(number: "", width: 50, height: 50) 
                            }
                        }
                        .padding()
                    }
                    .padding(.horizontal)

                    HStack {
                        Image(systemName: "mappin.circle.fill")
                            .foregroundColor(.blue)
                            .font(.title2)
                        Text("University Map")
                            .font(.headline)
                            .foregroundColor(.black)
                    }
                    .padding(.top, 5)
                }
                .padding()
                .background(Color(UIColor.systemBlue).opacity(0.2))
                .cornerRadius(15)
                .padding()

                    VStack(alignment: .leading, spacing: 8) {
                        Text("Map Description")
                            .font(.headline)
                        VStack(alignment: .leading, spacing: 8) {
                            ForEach(0..<list_of_faculties.count, id: \.self) { index in
                                Text("\(index + 1). \(list_of_faculties[index])")
                                    .font(.body)
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.horizontal)

                    Divider()

                    Text("About the University")
                        .font(.headline)

                    Text("""
                    National Institute of Business Management (NIBM) is the premier Business School in Sri Lanka. We keep abreast of global trends and constantly upgrade our products to suit today’s needs. Over the years we have developed our identity while proving to be a leader in management training and education. We have empowered thousands to carve better futures for themselves.
                    """)
                    .font(.body)
                    .foregroundColor(.gray)
                    .padding()
                }
                .padding()
            }
            .background(Color.lightGray)
            .navigationBarBackButtonHidden(true)
            
        }
    }

    func buildingView(number: String, width: CGFloat = 80, height: CGFloat = 80) -> some View {
        Rectangle()
            .fill(Color.blue)
            .frame(width: width, height: height)
            .overlay(
                Text(number)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            )
    }
}

struct HomeBody_Previews: PreviewProvider {
    static var previews: some View {
        HomeBody()
    }
}
