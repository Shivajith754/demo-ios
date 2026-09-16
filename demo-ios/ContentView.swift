import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        ZStack {
            Color(uiColor: .systemBackground)
                .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 24) {
                VStack(alignment: .leading, spacing: 6) {
                    Text("Weekend Trip")
                        .font(.largeTitle.bold())
                        .foregroundStyle(.primary)

                    Text("Explore somewhere new")
                        .foregroundStyle(.secondary)
                }

                Image(systemName: "mountain.2.fill")
                    .font(.system(size: 70))
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 40)
                    .background(
                        colorScheme == .dark
                            ? Color(red: 0.15, green: 0.20, blue: 0.26)
                            : Color(red: 0.92, green: 0.95, blue: 0.98)
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 24))

                VStack(alignment: .leading, spacing: 8) {
                    Text("Mountain Escape")
                        .font(.title2.bold())
                        .foregroundStyle(.primary)

                    Text("2 nights · September 20–22")
                        .foregroundStyle(.secondary)

                    Text("A quiet weekend away from the city.")
                        .foregroundStyle(.primary)
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

#Preview("Light Mode") {
    ContentView()
        .preferredColorScheme(.light)
}

#Preview("Dark Mode") {
    ContentView()
        .preferredColorScheme(.dark)
}
