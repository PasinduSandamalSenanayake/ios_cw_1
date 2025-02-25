import SwiftUI

struct IntroView: View {
    @State private var isNext = false
    @State private var isSkip = false
    var body: some View {

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
                .background(Color.blue)
                
