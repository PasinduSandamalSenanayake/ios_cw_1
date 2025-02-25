//
//  profile.swift
//  GroupSix
//
//  Created by Sheshami 029 on 2025-02-25.
//
import SwiftUI

struct profileView: View {
    var body: some View {
        VStack(spacing: 0) {
            // Top Half (Blue Background with Image)
            VStack {
                Spacer()
                Image("user")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 200) // Make width and height equal for a perfect circle
                    .clipShape(Circle()) // Clip the image into a circle
                    
                Text("John Andrew")
                    .font(.headline)
                    .bold()
                    .foregroundColor(.white)
                
                Text("JohnAndrew@gmail,com")
                    .font(.body)
                    .foregroundColor(.white)

                
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .frame(height: UIScreen.main.bounds.height * 0.45) // Adjusted height
            .background(Color.primaryBlue)
            
            // Bottom Half (White Background with Rounded Corners)
            VStack(alignment: .leading, spacing: 1) {
                HStack{
                    Image(systemName: "person.fill")
                        .foregroundColor(.white)
                        .padding(9)
                        .background(Circle().fill(Color.black))
                    
                    Text("Profile Details")
                        .font(.system(size: 18, weight: .medium))
                        .foregroundColor(.primary)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                }
                .padding()
                
                HStack{
                    Image(systemName: "moon.fill")
                        .foregroundColor(.white)
                        .padding(9)
                        .background(Circle().fill(Color.black))
                    
                    Text("Dark mode")
                        .font(.system(size: 18, weight: .medium))
                        .foregroundColor(.primary)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                }
                .padding()
                
                HStack{
                    Image(systemName: "questionmark.circle.fill")
                        .foregroundColor(.white)
                        .padding(9)
                        .background(Circle().fill(Color.black))
                    
                    Text("Help & Support")
                        .font(.system(size: 18, weight: .medium))
                        .foregroundColor(.primary)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                }
                .padding()
                
                HStack{
                    Image(systemName: "gearshape.fill")
                        .foregroundColor(.white)
                        .padding(9)
                        .background(Circle().fill(Color.black))
                    
                    Text("Settings")
                        .font(.system(size: 18, weight: .medium))
                        .foregroundColor(.primary)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                }
                .padding()
                
                HStack{
                    Image(systemName: "arrow.backward.circle.fill")
                        .foregroundColor(.white)
                        .padding(9)
                        .background(Circle().fill(Color.black))
                    
                    Text("Log Out")
                        .font(.system(size: 18, weight: .medium))
                        .foregroundColor(.primary)
                    
                    
                }
                .padding()
            }
            .frame(maxWidth: .infinity)
            .padding()
            .frame(height: UIScreen.main.bounds.height * 0.555)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous)) // Add corner radius
            .shadow(radius: 5)
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color.primaryBlue)
    }
}

struct profileView_Previews: PreviewProvider {
    static var previews: some View {
        profileView()
    }
}

