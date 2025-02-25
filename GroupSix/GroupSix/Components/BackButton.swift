import SwiftUI

struct BackButton: View {
    @Environment(\.dismiss) var dismiss  // Allows going back to the previous screen

    var body: some View {
        Button(action: {
            dismiss()  // Go back to Navigate1View
        }) {
            HStack {
                Image(systemName: "chevron.left")
                Text("Back")
            }
            .font(.system(size: 18, weight: .medium))
            .foregroundColor(.blue)
            .padding()
        }
    }
}

struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton()
    }
}
