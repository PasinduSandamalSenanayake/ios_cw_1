import SwiftUI

struct LectureItemView: View {
    let courseCode: String
    let courseTitle: String
    let lecturer: String
    let time: String
    let room: String
    let location: String

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(courseCode)
                .font(.system(size: 18, weight: .bold))

            Text(courseTitle)
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(.gray)

            HStack {
                Text(lecturer)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.gray)

                Spacer()
                
                Text(time)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.black)
            }

            HStack {
                Text(room)
                    .foregroundColor(.blue)

                Spacer()

                Text(location)
                    .foregroundColor(.blue)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: .gray.opacity(0.2), radius: 4, x: 0, y: 2)
        .padding(.horizontal)
    }
}


