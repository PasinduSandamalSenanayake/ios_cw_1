import SwiftUI

struct HomeView: View {
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeBody()
                .tag(0)
            
            LiveUpdatesView()
                .tag(1)
            
            QRView()
                .tag(2)
            
            profileView()
                .tag(3)
        }
        .overlay(
            VStack {
                Spacer()
                CustomNavBar(selectedTab: $selectedTab)
            }
            .edgesIgnoringSafeArea(.bottom)
        )
    }
}

struct CustomNavBar: View {
    @Binding var selectedTab: Int

    var body: some View {
        HStack {
            NavBarItem(icon: "location.fill", title: "Navigate", tab: 0, selectedTab: $selectedTab)
            Spacer()
            NavBarItem(icon: "clock", title: "Live Udates", tab: 1, selectedTab: $selectedTab)
            Spacer()
            NavBarItem(icon: "qrcode", title: "QR Code", tab: 2, selectedTab: $selectedTab)
            Spacer()
            NavBarItem(icon: "person.fill", title: "Profile", tab: 3, selectedTab: $selectedTab)
        }
        .frame(height: 70)
        .padding(.horizontal, 30)
        .background(Color.white.shadow(radius: 5))
        .navigationBarBackButtonHidden(true)
    }
}

struct NavBarItem: View {
    let icon: String
    let title: String
    let tab: Int
    @Binding var selectedTab: Int

    var body: some View {
        Button(action: { selectedTab = tab }) {
            VStack {
                Image(systemName: icon)
                    .font(.system(size: 24))
                    .foregroundColor(selectedTab == tab ? Color.primaryBlue : .gray)
                Text(title)
                    .font(.caption)
                    .foregroundColor(selectedTab == tab ? Color.primaryBlue : .gray)
            }
            .padding(.top, 10)
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
