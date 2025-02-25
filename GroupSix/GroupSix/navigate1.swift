import SwiftUI

struct Navigate1View: View {
    @State private var step1Completed = true
    @State private var step2Completed = false
    @State private var step3Completed = false
    @State private var step4Completed = false
    @State private var isNavigating = false  // State variable to control navigation

    var body: some View {
        NavigationStack {  // Use NavigationStack for iOS 16 and later
            VStack(alignment: .leading, spacing: 16) {
                HStack {
                    Spacer()
                            
                    Text("Navigation")
                        .font(.system(size: 28, weight: .bold))
                        .foregroundColor(.black)
                            
                    Spacer()
                }

                Text("Description")
                    .font(.system(size: 22, weight: .medium))

                Text("Could you please head towards the Faculty of Science and look for the elevator or staircase? Once you reach the 3rd floor, kindly make your way to Hall 44.")
                    .font(.system(size: 16, weight: .regular))

                VStack(alignment: .leading, spacing: 8) {
                    stepItem(text: "Heading to the faculty of science", completed: step1Completed)
                    stepItem(text: "Look for the elevator or staircase", completed: step2Completed)
                    stepItem(text: "Go to the 3rd floor", completed: step3Completed)
                    stepItem(text: "Find the hall 44", completed: step4Completed)
                }
                .padding()

                Image("map1")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 310)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .frame(maxWidth: .infinity, alignment: .center)

                Spacer()

                // Navigation destination to Navigate2View
                .navigationDestination(isPresented: $isNavigating) {
                    Navigate2View()  // Replace with your actual next view
                }

                HStack {
                    Spacer()

                    Button(action: {
                        print("Next button tapped")
                        isNavigating = true // Trigger navigation to Navigate2View
                    }) {
                        HStack {
                            Text("Next")
                            Image(systemName: "chevron.right")
                        }
                        .font(.system(size: 18, weight: .medium))
                        .foregroundColor(.blue)
                        .padding()
                    }
                }
            }
            .padding()
        }
    }

    func stepItem(text: String, completed: Bool) -> some View {
        HStack {
            Image(systemName: completed ? "checkmark.circle.fill" : "circle")
                .foregroundColor(completed ? .green : .gray)
            Text(text)
                .foregroundColor(.black)
        }
    }
}

struct Navigate1View_Previews: PreviewProvider {
    static var previews: some View {
        Navigate1View()
    }
}
