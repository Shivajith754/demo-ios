import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 24) {
                VStack(alignment: .leading, spacing: 6) {
                    Text("Overview")
                        .font(.largeTitle.bold())
                        .foregroundStyle(.black)

                    Text("September")
                        .foregroundStyle(.gray)
                }

                VStack(alignment: .leading, spacing: 8) {
                    Text("Balance")
                        .foregroundStyle(.gray)

                    Text("$12,840")
                        .font(.system(size: 36, weight: .bold))
                        .foregroundStyle(.black)
                }
                .padding(20)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(red: 0.94, green: 0.96, blue: 0.99))
                .clipShape(RoundedRectangle(cornerRadius: 20))

                VStack(alignment: .leading, spacing: 16) {
                    Text("Recent activity")
                        .font(.title3.bold())
                        .foregroundStyle(.black)

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
                .foregroundStyle(.black)

            Spacer()

            Text(amount)
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    ContentView()
}
