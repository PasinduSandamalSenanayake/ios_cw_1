import SwiftUI

struct CoinsView: View {
    var userCoins: Int = 38
    
    var body: some View {
        VStack(alignment: .leading) {
            // Navigation bar
            HStack {
                Text("Coins")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer() // This spacer will center the "Coins" text by taking up space on both sides
                Text("\(userCoins) coins")
                    .fontWeight(.bold)
                    .foregroundColor(.yellow)
            }
            .padding()
            .background(Color(UIColor.systemGray6))

            
            // Product card
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white) // Gray-colored box
                        .frame(width: 100, height: 100)
                        .shadow(radius: 15)
                    
                    Image("coca") // Replace with actual image asset name
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100) // Adjust size as needed
                }
                .padding()
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Coca Cola")
                        .font(.headline)
                    Text("500 ml bottle")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
                Text("100 /coins")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding()
            }
            .background(Color.white)
            .cornerRadius(15)
            .shadow(color: .gray.opacity(0.2), radius: 5, x: 0, y: 2)
            .padding(.horizontal)
            
            
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white) // Gray-colored box
                        .frame(width: 100, height: 100)
                        .shadow(radius: 15)
                    
                    Image("sprite") // Replace with actual image asset name
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100) // Adjust size as needed
                }
                .padding()
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Coca Cola")
                        .font(.headline)
                    Text("500 ml bottle")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
                Text("120 /coins")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding()
            }
            .background(Color.white)
            .cornerRadius(15)
            .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 2)
            .padding(.horizontal)
            
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white) // Gray-colored box
                        .frame(width: 100, height: 100)
                        .shadow(radius: 15)
                    
                    Image("sun_crush") // Replace with actual image asset name
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100) // Adjust size as needed
                }
                .padding()
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Sun Crush")
                        .font(.headline)
                    Text("500 ml bottle")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
                Text("150 /coins")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding()
            }
            .background(Color.white)
            .cornerRadius(15)
            .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 2)
            .padding(.horizontal)
            
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white) // Gray-colored box
                        .frame(width: 100, height: 100)
                        .shadow(radius: 15)
                    
                    Image("coca") // Replace with actual image asset name
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100) // Adjust size as needed
                }
                .padding()
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Coca Cola")
                        .font(.headline)
                    Text("500 ml bottle")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
                Text("100 /coins")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding()
            }
            .background(Color.white)
            .cornerRadius(15)
            .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 2)
            .padding(.horizontal)
            .navigationBarBackButtonHidden(true)


            
            Spacer()
        }
        .background(Color(UIColor.systemGray5))
    }
}

struct CoinsView_Previews: PreviewProvider {
    static var previews: some View {
        CoinsView()
    }
}

