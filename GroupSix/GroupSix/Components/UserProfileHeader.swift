import SwiftUI

struct UserProfileHeader: View {

    var body: some View {
        HStack {
            Circle()
                .fill(Color.blue)
                .frame(width: 40, height: 40)
                .overlay(
                    Image("user")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 2))
                )

            VStack(alignment: .leading) {
                Text("Good morning")
                    .font(.caption)
                    .foregroundColor(.gray)
                Text("John Andrew")
                    .fontWeight(.bold)
            }

            Spacer()

            NavigationLink(destination: CoinsView()) {
                Text("38 coins")
                    .foregroundColor(Color.primaryBlue)
                    .font(.title2)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 5)
        .padding(.horizontal)
    }
}


