import SwiftUI

struct Navigate3View: View {
    @State private var step1Completed = true
    @State private var step2Completed = true
    @State private var step3Completed = true
    @State private var step4Completed = true
    @State private var isNavigating = false

    var body: some View {
        NavigationStack {
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
                    stepItem(text: "Heading to the Faculty of Science", completed: step1Completed)
                    stepItem(text: "Look for the elevator or staircase", completed: step2Completed)
                    stepItem(text: "Go to the 3rd floor", completed: step3Completed)
                    stepItem(text: "Find Hall 44", completed: step4Completed)
                }
                .padding()
                
                Image("map3_new")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 310)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .frame(maxWidth: .infinity, alignment: .center)
                
                HStack(spacing: 20) {
                    legendItem(color: .red, text: "Elevator")
                    legendItem(color: .green, text: "Staircase")
                    legendItem(color: .purple, text: "Hall 44")
                }
                .padding()
                
                
                .navigationDestination(isPresented: $isNavigating) {
                    HomeBody()
                }

                HStack {
                    Spacer()
                    
                    Button(action: {
                        print("Done button tapped")
                        isNavigating = true  
                    }) {
                        HStack {
                            Text("Done")
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

    func legendItem(color: Color, text: String) -> some View {
        HStack {
            Circle()
                .fill(color)
                .frame(width: 10, height: 10)
            Text(text)
                .font(.subheadline)
        }
    }
}

struct Navigate3View_Previews: PreviewProvider {
    static var previews: some View {
        Navigate3View()
    }
}
