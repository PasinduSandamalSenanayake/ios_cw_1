import SwiftUI

struct HomeBody: View {
    @State private var selectedFaculty = "Select the faculty"
    @State private var selectedLocation = "Select the location"

    let faculties = ["Engineering", "Science", "Business", "Medicine"]
    let locations = ["Main Campus", "City Campus", "North Wing", "South Block"]

    var body: some View {
        VStack(spacing: 10) {
            // User Greeting & Notification Icon
            HStack {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 40, height: 40)
               
                VStack(alignment: .leading) {
                    Text("Good morning")
                        .font(.caption)
                        .foregroundColor(.gray)
                    Text("Sandamal Senanayake")
                        .fontWeight(.bold)
                }
               
                Spacer()
               
                Image(systemName: "bell.fill")
                    .foregroundColor(.blue)
                    .font(.title2)
            }
            .padding()

            // Faculty Picker
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

            // Location Picker
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

            // Search Button
            Button(action: {
                print("Search tapped")
            }) {
                Text("Search")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.horizontal)

            Spacer()
        }
        .padding()
    }
}

struct HomeBody_Previews: PreviewProvider {
    static var previews: some View {
        HomeBody()
    }
}
