import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isGuestModeActive = false
    @State private var isAccountCreationActive = false
    @State private var isUserActive = false
    
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 0)
                        .foregroundColor(Color.primaryBlue)
                        .rotationEffect(Angle(degrees: 15))

                    VStack {
                        Text("Navigator")
                            .font(.system(size: 36))
                            .foregroundColor(Color.white)
                            .bold()

                        Text("Start to navigate")
                            .font(.system(size: 24))
                            .foregroundColor(Color.white)
                    }
                    .padding(.top, 30)
                }
                .frame(width: UIScreen.main.bounds.width * 3, height: 300)
                .offset(y: -100)

                Spacer().frame(height: 30)

                // Username Field
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.gray, lineWidth: 1)
                        .frame(height: 50)

                    TextField("Enter Username", text: $username)
                        .padding(.horizontal, 15)
                        .font(.system(size: 18))
                }
                .padding(.horizontal)

                // Password Field
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.gray, lineWidth: 1)
                        .frame(height: 50)

                    SecureField("Enter Password", text: $password)
                        .padding(.horizontal, 15)
                        .font(.system(size: 18))
                }
                .padding(.horizontal)
                .padding(.bottom, 20)

                // Sign In Button
                Button(action: {
                    isUserActive = true
                }) {
                    Text("SIGN IN")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.primaryBlue)
                        .foregroundColor(.white)
                        .cornerRadius(25)
                        .fontWeight(.bold)
                }
                .padding(.horizontal)

                // OR Separator
                HStack {
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray)
                    Text("OR")
                        .foregroundColor(.gray)
                        .fontWeight(.bold)
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray)
                }
                .padding(.horizontal)

                // Guest Mode Button
                Button(action: {
                    isGuestModeActive = true
                }) {
                    Text("GUEST MODE")
                        .foregroundColor(Color.primaryBlue)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.primaryBlue, lineWidth: 2)
                        )
                }
                .padding(.horizontal)

                Spacer()

                // Create Account Section
                VStack(alignment: .center) {
                    Text("New around here?")
                    
                    Button(action: {
                        isAccountCreationActive = true
                    }) {
                        Text("Create An Account")
                            .foregroundColor(Color.primaryBlue)
                            .underline()
                    }
                }
                .padding(.bottom)
            }
            // New Navigation Destination Handling (iOS 16+)
            .navigationDestination(isPresented: $isGuestModeActive) {
                HomeBody()
            }
            .navigationDestination(isPresented: $isAccountCreationActive) {
                RegisterView()
            }
            .navigationDestination(isPresented: $isUserActive){
                HomeView()
            }
        }
    }
}


#Preview {
    LoginView()
}
