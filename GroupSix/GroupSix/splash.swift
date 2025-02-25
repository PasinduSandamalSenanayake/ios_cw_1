

import SwiftUI

struct SplashView: View {
  @State private var isActive = false

  var body: some View{
    if isActive {
        RegisterView()
    } else {
      ZStack{
          Color.primaryBlue
              .edgesIgnoringSafeArea(.all)
          
          Text("Navigator")
              .font(.largeTitle)
              .fontWeight(.bold)
              .foregroundStyle(.white)
      }
      .onAppear{
          DispatchQueue.main.asyncAfter(deadline: .now() + 2){
              withAnimation {
                  self.isActive = true
              }
          }
      }
    }
  }
}

struct SplashView_Previews: PreviewProvider {
  static var previews: some View {
    SplashView()
  }
}
