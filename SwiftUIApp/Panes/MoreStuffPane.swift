import SwiftUI

struct MoreStuffPane: View {
  var body: some View {
    Pane { Text("USB Stick") }.navigationTitle(SidebarPane.moreStuff.name())
      .navigationSubtitle("USB Stick")
  }
}
