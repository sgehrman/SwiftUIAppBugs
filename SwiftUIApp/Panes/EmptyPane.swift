import SwiftUI

struct EmptyPane: View {
  var body: some View {
    Pane { VStack { Text("No entry selected") } }.navigationTitle("Do Something")
      .navigationSubtitle("Do Something")
  }
}
