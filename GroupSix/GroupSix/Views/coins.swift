import SwiftUI

struct CoinsView: View {
    var userCoins: Int = 38
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Coins")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
                
                Text("\(userCoins) coins")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.primaryBlue)
            }
            .padding()
            .background(Color(UIColor.systemGray6))
            
            ProductItemView(
                imageName: "coca",
                productName: "Coca Cola",
                productDescription: "500 ml bottle",
                price: 100
            )
            
            ProductItemView(
                imageName: "sprite",
                productName: "Coca Cola",
                productDescription: "500 ml bottle",
                price: 120
            )
            
            ProductItemView(
                imageName: "sun_crush",
                productName: "Sun Crush",
                productDescription: "500 ml bottle",
                price: 150
            )
            
            ProductItemView(
                imageName: "coca",
                productName: "Coca Cola",
                productDescription: "500 ml bottle",
                price: 100
            )
            
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
