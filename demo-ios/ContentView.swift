import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 24) {
                VStack(alignment: .leading, spacing: 6) {
                    Text("Weekend Trip")
                        .font(.largeTitle.bold())
                        .foregroundStyle(.black)

                    Text("Explore somewhere new")
                        .foregroundStyle(.gray)
                }

                Image(systemName: "mountain.2.fill")
                    .font(.system(size: 70))
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 40)
                    .background(Color(red: 0.92, green: 0.95, blue: 0.98))
                    .clipShape(RoundedRectangle(cornerRadius: 24))

                VStack(alignment: .leading, spacing: 8) {
                    Text("Mountain Escape")
                        .font(.title2.bold())
                        .foregroundStyle(.black)

                    Text("2 nights · September 20–22")
                        .foregroundStyle(.gray)

                    Text("A quiet weekend away from the city.")
                        .foregroundStyle(.black)
                        .padding(.top, 4)
                }

                Spacer()

                Button("View trip") {}
                    .buttonStyle(.borderedProminent)
                    .frame(maxWidth: .infinity)
            }
            .padding(24)
        }
    }
}

#Preview {
    ContentView()
}
