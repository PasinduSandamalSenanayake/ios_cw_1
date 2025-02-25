import SwiftUI

struct SplashView: View {
    @State private var isActive = false

    var body: some View {
        NavigationStack {
            ZStack {
                Color.primaryBlue
                    .edgesIgnoringSafeArea(.all)

                Text("Navigator")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation {
                        isActive = true
                    }
                }
            }
            .navigationDestination(isPresented: $isActive) {
                IntroView() // Ensure LoginView exists in your project
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
