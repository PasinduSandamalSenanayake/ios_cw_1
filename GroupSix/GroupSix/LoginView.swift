import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isGuestModeActive = false
    @State private var isAccountCreationActive = false
    
    var body: some View {
        NavigationView {
            VStack {
                // Header Section
                ZStack {

                RoundedRectangle (cornerRadius: 0)
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
                
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.gray, lineWidth: 1) // Border for clarity
                        .frame(height: 50)

                    TextField("Enter Username", text: $username)
                        .padding(.horizontal, 15) // Adds left & right padding inside
                        .font(.system(size: 18))
                }
                .padding(.horizontal) // External padding

                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.gray, lineWidth: 1) // Border for clarity
                        .frame(height: 50)

                    SecureField("Enter Password", text: $password)
                        .padding(.horizontal, 15) // Adds left & right padding inside
                        .font(.system(size: 18))
                }
                .padding(.horizontal) // External padding
                .padding(.bottom, 20)


                
                // Sign In Button
                Button(action: {
                    // Handle sign-in action
                }) {
                    Text("Sign In")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.primaryBlue)
                        .foregroundColor(.white)
                        .cornerRadius(25)
                        .fontWeight(.bold)
                }
                .padding(.horizontal)

                // OR Divider
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
                        .foregroundColor(Color.primaryBlue) // Change text color
                        .frame(maxWidth: .infinity)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.primaryBlue, lineWidth: 2) // Keeps border color same
                        )
                }
                .padding(.horizontal)


                
                Spacer()
                
                // Create Account Link
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

                
                // Navigation Links
                NavigationLink(destination: Text("Guest Mode View"), isActive: $isGuestModeActive) {
                    EmptyView()
                }
                NavigationLink(destination: Text("Account Creation View"), isActive: $isAccountCreationActive) {
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
