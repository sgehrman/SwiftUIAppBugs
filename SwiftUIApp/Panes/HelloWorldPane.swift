import ExyteGrid
import SwiftUI

struct HelloWorldPane: View {
  var body: some View {
    Pane { VStack(spacing: 20) { Text("Documents") } }
      .navigationTitle(SidebarPane.helloWorld.name())
  }
}

#Preview { HelloWorldPane() }
