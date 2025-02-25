import SwiftUI

struct IntroView2: View {
    @State private var isNext = false
    @State private var isSkip = false
    var body: some View {
        NavigationStack{
            VStack(spacing: 0) {
              
                VStack {
                    Spacer()
                    Image("scan")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 200)
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .frame(height: UIScreen.main.bounds.height * 0.45)
                .background(Color.blue)
                
               
                VStack(alignment: .leading, spacing: 15) {
                    Text("💙 Your Contribution Matters")
                        .font(.headline)
                        .bold()
                    
                    Text("Scan QR codes when entering & leaving to help others find free spaces & earn rewards(coins)")
                        .padding(.bottom,30)
                    
                    
                    Text("🎓 Get live availability for the ")
                        .font(.headline)
                        .bold()
                    
                    VStack(alignment: .leading) {
                        Text("• Library")
                        Text("• PC Labs")
                        Text("• Study Areas")
                        Text("• Cafeteria")
                        Text("• Parking Slots")
                    }
                    .padding(.bottom,60)
                    
                    NavigationLink(destination: IntroView3(),isActive: $isNext){
                        EmptyView()
                    }
                    NavigationLink(destination: LoginView(),isActive: $isSkip){
                        EmptyView()
                    }
                    HStack{
                        Button(action: {
                            isSkip = true
                        }) {
                            Text("Skip")
                                .foregroundColor(.primaryBlue)
                        }
                        Spacer()
                        
                        Button(action: {
                            isNext = true
                        }) {
                            Text("Next >")
                                .foregroundColor(.primaryBlue)
                        }
                    }
                    .padding(.horizontal, 20)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .frame(height: UIScreen.main.bounds.height * 0.55)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(radius: 5)
            }
            .edgesIgnoringSafeArea(.all)
            .background(Color.blue)
        }
    }
}

struct IntroView2_Previews: PreviewProvider {
    static var previews: some View {
        IntroView2()
    }
}
