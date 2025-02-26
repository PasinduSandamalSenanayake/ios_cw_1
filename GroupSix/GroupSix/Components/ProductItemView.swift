import SwiftUI

struct ProductItemView: View {
    var imageName: String
    var productName: String
    var productDescription: String
    var price: Int
    
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                    .frame(width: 100, height: 100)
                    .shadow(radius: 7)
                
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
            }
            .padding()
            
            VStack(alignment: .leading, spacing: 5) {
                Text(productName)
                    .font(.headline)
                Text(productDescription)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            
            HStack(spacing: 1) {
                Text("\(price)")
                    .font(.title3)
                    .fontWeight(.bold)
                
                Text("/coins")
                    .font(.body)
                    .foregroundColor(.gray) 
            }
            .padding(.trailing)
        }
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: .gray.opacity(0.2), radius: 5, x: 6, y: 2)
        .padding(.horizontal)
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(imageName: "coca", productName: "Coca Cola", productDescription: "500 ml bottle", price: 1000)
    }
}
