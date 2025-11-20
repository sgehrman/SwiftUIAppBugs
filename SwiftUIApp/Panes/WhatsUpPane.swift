import SwiftUI

struct WhatsUpPane: View {
  var body: some View {
    Pane { Text("Library") }.navigationTitle(SidebarPane.whatsUp.name())
      .navigationSubtitle("HD Disk")
  }
}

#Preview { WhatsUpPane() }
