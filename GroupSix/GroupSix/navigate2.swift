import SwiftUI

struct Navigate2View: View {
    @State private var step1Completed = true
    @State private var step2Completed = true  
    @State private var step3Completed = false
    @State private var step4Completed = false

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Button(action: {
                    print("Back button tapped")
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                        .font(.system(size: 20, weight: .medium))
                }
                
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
            
            
            Image("map2")
                .resizable()
                .scaledToFit()
                .frame(height: 310)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(maxWidth: .infinity, alignment: .center)
            

            HStack(spacing: 20) {
                legendItem(color: .red, text: "Path to elevator")
                legendItem(color: .green, text: "Path to staircase")
            }
            .padding()
            
            HStack {
                Button(action: {
                    print("Back button tapped")
                }) {
                    HStack {
                        Image(systemName: "chevron.left")
                        Text("Back")
                    }
                    .font(.system(size: 18, weight: .medium))
                    .foregroundColor(.blue)
                    .padding()
                }
                
                Spacer()
                
                Button(action: {
                    print("Next button tapped")
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


struct Navigate2View_Previews: PreviewProvider {
    static var previews: some View {
        Navigate2View()
    }
}
