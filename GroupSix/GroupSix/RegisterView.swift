import SwiftUI

struct RegisterView: View {
    @State private var fullName: String = ""
    @State private var username: String = ""
    @State private var outlookMail: String = ""
    @State private var mobileNumber: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var isGuestModeActive = false
    @State private var isAccountCreationActive = false
    @State private var isAccountCreated = false
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack {

                RoundedRectangle (cornerRadius: 0)
                        .foregroundColor(Color.primaryBlue)
                        .rotationEffect(Angle(degrees: -15))

                VStack {
                    Text("Register")
                        .font(.system(size: 42))
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
                
                Spacer().frame(height: 5)
                
                
                
                
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.gray, lineWidth: 1)
                        .frame(height: 50)

                    TextField("Enter Full Name", text: $fullName)
                        .padding(.horizontal, 15)
                        .font(.system(size: 18))
                }
                .padding(.horizontal)

                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.gray, lineWidth: 1)
                        .frame(height: 50)

                    TextField("Enter username", text: $username)
                        .padding(.horizontal, 15)
                        .font(.system(size: 18))
                }
                .padding(.horizontal)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.gray, lineWidth: 1)
                        .frame(height: 50)

                    TextField("Enter Outlook Mail", text: $outlookMail)
                        .padding(.horizontal, 15)
                        .font(.system(size: 18))
                }
                .padding(.horizontal)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.gray, lineWidth: 1)
                        .frame(height: 50)

                    TextField("Enter Mobile Number", text: $mobileNumber)
                        .padding(.horizontal, 15)
                        .font(.system(size: 18))
                }
                .padding(.horizontal)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.gray, lineWidth: 1)
                        .frame(height: 50)

                    SecureField("Enter Password", text: $password)
                        .padding(.horizontal, 15)
                        .font(.system(size: 18))
                }
                .padding(.horizontal)

                
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.gray, lineWidth: 1)
                        .frame(height: 50)

                    SecureField("Enter Confirm Password", text: $confirmPassword)
                        .padding(.horizontal, 15)
                        .font(.system(size: 18))
                }
                .padding(.horizontal)
                .padding(.bottom, 30)


                
                NavigationLink(destination: HomeView(), isActive: $isAccountCreated) {
                    EmptyView()
                }

                                
                Button(action: {
                    isAccountCreated = true
                }) {
                    Text("SIGN UP")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.primaryBlue)
                        .foregroundColor(.white)
                        .cornerRadius(25)
                        .fontWeight(.bold)
                }
                .padding(.horizontal)
                
                Spacer()

            }
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    RegisterView()
}


