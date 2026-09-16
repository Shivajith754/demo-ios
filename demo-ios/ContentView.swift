import SwiftUI

struct ContentView: View {
    @Environment(\\.colorScheme) var colorScheme

    var body: some View {
        ZStack {
            Color(uiColor: .systemBackground)
                .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 24) {
                VStack(alignment: .leading, spacing: 6) {
                    Text("Overview")
                        .font(.largeTitle.bold())
                        .foregroundStyle(.primary)

                    Text("September")
                        .foregroundStyle(.secondary)
                }

                VStack(alignment: .leading, spacing: 8) {
                    Text("Balance")
                        .foregroundStyle(.secondary)

                    Text("$12,840")
                        .font(.system(size: 36, weight: .bold))
                        .foregroundStyle(.primary)
                }
                .padding(20)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(colorScheme == .dark ? Color(uiColor: .secondarySystemBackground) : Color(red: 0.94, green: 0.96, blue: 0.99))
                .clipShape(RoundedRectangle(cornerRadius: 20))

                VStack(alignment: .leading, spacing: 16) {
                    Text("Recent activity")
                        .font(.title3.bold())
                        .foregroundStyle(.primary)

                    activityRow("Coffee", amount: "- $4.50")
                    activityRow("Subscription", amount: "- $12.00")
                    activityRow("Transfer", amount: "+ $250.00")
                }

                Spacer()
            }
            .padding(24)
        }
    }

    private func activityRow(_ title: String, amount: String) -> some View {
        HStack {
            Text(title)
                .foregroundStyle(.primary)

            Spacer()

            Text(amount)
                .foregroundStyle(.secondary)
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
