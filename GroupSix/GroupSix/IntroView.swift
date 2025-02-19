import SwiftUI

struct IntroView: View {
    var body: some View {
        VStack(spacing: 0) {
            // Top Half (Blue Background with Image)
            VStack {
                Spacer()
                Image("intro1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 200)
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .frame(height: UIScreen.main.bounds.height * 0.45) // Adjusted height
            .background(Color.blue)
            
            // Bottom Half (White Background with Rounded Corners)
            VStack(alignment: .leading, spacing: 15) {
                Text("🎓 Students, Faculty & Staff")
                    .font(.headline)
                    .bold()
                
                Text("As part of our campus community, you can enjoy our full suite of features:")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                VStack(alignment: .leading) {
                    Text("• Interactive campus navigator")
                    Text("• Real-time updates on building access")
                    Text("• Important event notifications")
                    Text("• Personalized routes to your classes/offices")
                    Text("• Indoor navigation assistance")
                }
                .font(.footnote)
                .padding(.bottom, 10)
                
                Text("👋 Campus Guests")
                    .font(.headline)
                    .bold()
                
                Text("While visiting our campus, you have access to:")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                VStack(alignment: .leading) {
                    Text("• Basic campus navigator")
                    Text("• Main building locations")
                    Text("• Visitor parking information")
                }
                .font(.footnote)
                
                // Start Button
                Button(action: {
                    // Action for button
                }) {
                    Text("Let's Start!")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 20)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .frame(height: UIScreen.main.bounds.height * 0.55)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous)) // Add corner radius
            .shadow(radius: 5)
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color.blue)
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView2()
    }
}
