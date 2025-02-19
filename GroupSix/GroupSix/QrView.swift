//
//  QrView.swift
//  GroupSix
//
//  Created by Manula 048 on 2025-02-19.
//

//
//  LoginView.swift
//  GroupSix
//
//  Created by Sandamal 014 on 2025-02-18.
//
import SwiftUI

struct QRView: View {
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            
            // Logo
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 170)
                
            // Username and Password Fields
            TextField("Enter Username", text: .constant(""))
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)
            
            SecureField("Enter Password", text: .constant(""))
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)
            
            // Login Button
            Button(action: {
                print("Login tapped")
            }) {
                Text("LOGIN")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
                    .padding(.horizontal)
            }
            
            // OR separator
            HStack {
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                
                Text("OR")
                    .foregroundColor(.gray)
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
            }
            
            // Guest Mode Button
            Button(action: {
                print("Guest Mode tapped")
            }) {
                Text("GUEST MODE")
                    .font(.headline)
                    .foregroundColor(.blue)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.blue, lineWidth: 2)
                    )
                    .padding(.horizontal)
            }
            
            Spacer()
        }
        .padding()
    }
}

struct QRView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

