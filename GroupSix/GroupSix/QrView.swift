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
    @State private var showQRCode: Bool = false
    @State private var showPopup : Bool = false
    @State private var isDissmiss = false
    
    var body: some View {
        
        VStack {
            HStack {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 40, height: 40)
                    .overlay(
                        Image("user")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    )

                VStack(alignment: .leading) {
                    Text("Good morning")
                        .font(.caption)
                        .foregroundColor(.gray)
                    Text("John Andrew")
                        .fontWeight(.bold)
                }

                Spacer()
                
                NavigationLink(destination: CoinsView()) {
                    Text("38 coins")
                        .foregroundColor(Color.primaryBlue)
                        .font(.title2)
                }


            }
            .padding()
            .background(Color.white)
            .cornerRadius(15)
            .shadow(radius: 5)
            .padding(.horizontal)
            
            Text("Scan QR code")
                .font(.title2)
                .bold()
                
//                .padding(.bottom,20)
                .padding()
           
            Text("Scan QR codes when entering and leaving the key areas to help others find free spaces and reward coins")
                .padding(.bottom,25)
            
            
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
                        .onTapGesture (count:2){
                            showPopup = true
                        }
                } else{
                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 200, height: 200)
                        .cornerRadius(10)
                        .onTapGesture(count:2) {
                            withAnimation{
                                showQRCode.toggle()
                            }
                             
                            
                        }
                    
                }
            }
            
            Spacer()
            
//            HStack{
//                Image(systemName: "map.fill")
//                Spacer()
//                Image(systemName: "clock.fill")
//                Spacer()
//                Image(systemName: "bell.fill")
//                Spacer()
//                Image(systemName: "person.fill")
//                Spacer()
//            }
//            
//            .padding()
//            .font(.system(size: 25))
//            .foregroundColor(.white)
//            .frame(maxWidth: .infinity)
//            .background(Color.blue)
//            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .edgesIgnoringSafeArea(.bottom)
        .overlay(
            Group {
                if showPopup{
                    VStack{
                        Text("Scan successfull")
                            .font(.headline)
                            .bold()
                            .padding(.top,10)
                        
                        Text("Scan again when leaving the area to collect your 3 points!")
                            .font(.subheadline)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                       
                        
                        
                        Button(action: {
                            showPopup = false
                        }) {
                            Text("Dismiss")
                                .foregroundColor(.primaryBlue)
                                .bold()
                                . padding(.top,10)
                        }
                    }
                    .frame(width:300, height:150)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius:10)
                    .transition(.scale)
                    
                }
            }
        )
    }
}
            
           
//struct contentView1: View {
//    var body: some View {
//        QRView(showQRCode: false)
//    }
//}
//
//struct contentView2: View {
//    var body: some View {
//        QRView(showQRCode: true)
//    }
//}

#Preview {
    QRView()
}
    

