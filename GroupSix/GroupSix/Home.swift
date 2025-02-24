import SwiftUI

struct HomeView: View {
    @State private var selectedTab = 0  // Keeps track of selected tab

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeBody()
                .tag(0)
            
            SearchView()
                .tag(1)
            
            QRView()
                .tag(2)
            
            ProfileView()
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

// ✅ Custom Bottom Navigation Bar
struct CustomNavBar: View {
    @Binding var selectedTab: Int

    var body: some View {
        HStack {
            NavBarItem(icon: "location.fill", title: "Home", tab: 0, selectedTab: $selectedTab)
            Spacer()
            NavBarItem(icon: "clock", title: "Time", tab: 1, selectedTab: $selectedTab)
            Spacer()
            NavBarItem(icon: "bell.fill", title: "Alerts", tab: 2, selectedTab: $selectedTab)
            Spacer()
            NavBarItem(icon: "person.fill", title: "Profile", tab: 3, selectedTab: $selectedTab)
        }
        .frame(height: 70)
        .padding(.horizontal, 30)
        .background(Color.white.shadow(radius: 5))
    }
}

// ✅ Navigation Bar Item Component
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
                    .foregroundColor(selectedTab == tab ? .blue : .gray)
                Text(title)
                    .font(.caption)
                    .foregroundColor(selectedTab == tab ? .blue : .gray)
            }
            .padding(.top, 10)
        }
    }
}

// ✅ LogView (The Home Screen)
struct LogView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("🏠 Welcome to LogView!")
                    .font(.largeTitle)
                    .bold()
                Spacer()
            }
            .navigationTitle("Home")
        }
    }
}

// ✅ Dummy Screens for Other Tabs
struct SearchView: View {
    var body: some View {
        VStack {
            Text("🔍 Search View")
                .font(.largeTitle)
                .bold()
            Spacer()
        }
        .navigationTitle("Search")
    }
}

struct NotificationsView: View {
    var body: some View {
        VStack {
            Text("🔔 Notifications View")
                .font(.largeTitle)
                .bold()
            Spacer()
        }
        .navigationTitle("Notifications")
    }
}

struct ProfileView: View {
    var body: some View {
        VStack {
            Text("👤 Profile View")
                .font(.largeTitle)
                .bold()
            Spacer()
        }
        .navigationTitle("Profile")
    }
}

// ✅ Preview
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
