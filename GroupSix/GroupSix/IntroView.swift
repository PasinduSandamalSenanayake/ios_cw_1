import SwiftUI

struct IntroView: View {
    @State private var isNext = false
    @State private var isSkip = false
    var body: some View {
        NavigationStack{
            VStack(spacing: 0) {
                
                VStack {
                    Spacer()
                    Image("intro1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 200)
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .frame(height: UIScreen.main.bounds.height * 0.45)
                .background(Color.primaryBlue)
                
               
                VStack(alignment: .leading, spacing: 15) {
                    Text("🎓 Students, Faculty & Staff")
                        .font(.headline)
                        .bold()
                    
                    //                Text("As part of our campus community, you can enjoy our full suite of features:")
                    //                    .font(.subheadline)
                    //                    .foregroundColor(.gray)
                    
                    VStack(alignment: .leading) {
                        Text("• Interactive campus navigation")
                        Text("• Real-time building access updates")
                        Text("• Important event notifications")
                        Text("• Personalized routes")
                        Text("• Indoor navigation assistance")
                    }
                    
                    .padding(.bottom, 10)
                    
                    Text("👋 Campus Guests")
                        .font(.headline)
                        .bold()
                    //
                    //                Text("While visiting our campus, you have access to:")
                    //                    .font(.subheadline)
                    //                    .foregroundColor(.gray)
                    
                    VStack(alignment: .leading) {
                        Text("• Basic campus navigation")
                        Text("• Main building locations")
                        Text("• Visitor parking info")
                    }
                    .padding(.bottom,60)
                    
                    NavigationLink(destination: IntroView2(),isActive: $isNext){
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
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous)) // Add corner radius
                .shadow(radius: 5)
            }
            .edgesIgnoringSafeArea(.all)
            .background(Color.primaryBlue)
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
