import SwiftUI

struct BackButton: View {
    @Environment(\.dismiss) var dismiss  

    var body: some View {
        Button(action: {
            dismiss()
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
