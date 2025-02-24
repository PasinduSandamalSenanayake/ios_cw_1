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
    var showQRCode: Bool
    
    var body: some View {
        
        VStack {
            HStack{
                Circle()
                    .fill(Color.blue)
                    .frame(width:40, height:40)
                Text("Manula Rathnayake")
                    .font(.headline)
                    .foregroundColor(.black)
                Spacer()
                
            }
            .padding()
            
            Text("Scan QR code")
                .font(.title2)
                .bold()
                
                .padding(.bottom,10)
            Spacer()
            
            ZStack{
                Rectangle()
                    .fill(Color.black)
                    .frame(width: 400, height:500)
                    .cornerRadius(10)
                
                if showQRCode {
                    Image(systemName: "qrcode")
                        .resizable()
                        .scaledToFit()
                        .frame(width:200, height:200)
                        .foregroundColor(.white)
                } else{
                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 200, height: 200)
                        .cornerRadius(10)
                    
                }
            }
            
            Spacer()
            
            HStack{
                Image(systemName: "map.fill")
                Spacer()
                Image(systemName: "clock.fill")
                Spacer()
                Image(systemName: "bell.fill")
                Spacer()
                Image(systemName: "person.fill")
                Spacer()
            }
            
            .padding()
            .font(.system(size: 25))
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}
            
           
struct contentView1: View {
    var body: some View {
        QRView(showQRCode: false)
    }
}

struct contentView2: View {
    var body: some View {
        QRView(showQRCode: true)
    }
}

#Preview {
    contentView1()
}
    

