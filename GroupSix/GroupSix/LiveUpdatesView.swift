import SwiftUI

struct LiveUpdatesView: View {
    @State private var selectedFaculty: String? = nil
    @State private var selectedLocation: String? = nil

    var body: some View {
        NavigationStack {
            VStack {
                UserProfileHeader()

                Menu {
                    Button("Faculty of Engineering") { selectedFaculty = "Faculty of Engineering" }
                    Button("Faculty of Education") { selectedFaculty = "Faculty of Education" }
                    Button("Faculty of Science") { selectedFaculty = "Faculty of Science" }
                    Button("Faculty of Medicine") { selectedFaculty = "Faculty of Medicine" }
                    Button("Faculty of Computing") { selectedFaculty = "Faculty of Computing" }
                } label: {
                    HStack {
                        Text(selectedFaculty ?? "Select the faculty")
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
                    Button("Cafeteria") { selectedLocation = "Cafeteria" }
                    Button("Library") { selectedLocation = "Library" }
                    Button("Parking 01") { selectedLocation = "Parking 01" }
                    Button("Parking 02") { selectedLocation = "Parking 02" }
                    Button("PC Lab 05") { selectedLocation = "PC Lab 05" }
                    Button("PC Lab 06") { selectedLocation = "PC Lab 06" }
                    Button("PC Lab 10") { selectedLocation = "PC Lab 10" }
                    Button("Study Area 01") { selectedLocation = "Study Area 01" }
                    Button("Study Area 02") { selectedLocation = "Study Area 02" }
                } label: {
                    HStack {
                        Text(selectedLocation ?? "Select the location")
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

                if selectedFaculty == "Faculty of Engineering" && selectedLocation == "Cafeteria" {
                    LiveView()
                }

                Spacer()
            }
            .padding()
        }
    }
}

struct LiveView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Cafeteria")
                .font(.headline)
                .bold()

            Text("GROUND FLOOR")
                .foregroundColor(.primaryBlue)
                .padding(.bottom, 40)

            HStack {
                Text("Free Space")
                    .padding(.bottom, 25)
                Spacer()
                Text("40")
                    .foregroundColor(.green)
                    .bold()
                    .padding(.bottom, 25)
            }
            .padding(.top, 5)

            HStack {
                Text("Occupied")
                    .padding(.bottom, 25)
                Spacer()
                Text("110")
                    .foregroundColor(.red)
                    .bold()
                    .padding(.bottom, 25)
            }
            .padding(.top, 5)

            HStack {
                Text("Capacity")
                    .padding(.bottom, 25)
                Spacer()
                Text("150")
                    .bold()
                    .foregroundColor(.primaryBlue)
                    .padding(.bottom, 25)
            }
            .padding(.top, 5)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        .padding()

        NavigationLink(destination: Navigate1View()) {
            HStack {
                Image(systemName: "location.fill")
                Text("Tap here to get directions")
            }
            .padding()
            .background(Color.primaryBlue.opacity(0.2))
            .cornerRadius(8)
        }
    }
}


#Preview {
    LiveUpdatesView()
}
