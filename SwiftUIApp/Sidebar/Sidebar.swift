import SwiftUI

struct Sidebar: View {
  @State
  var searchText: String = ""
  var body: some View {
    List {
      Section(header: Text("General")) {
        NavigationLink(value: SidebarPane.helloWorld) {
          Label(SidebarPane.helloWorld.name(), systemImage: "text.bubble")
        }
        NavigationLink(value: SidebarPane.whatsUp) {
          Label(SidebarPane.whatsUp.name(), systemImage: "questionmark.app.dashed")
        }
      }
    }
    .listStyle(.sidebar).frame(minWidth: 180, idealWidth: 180, maxWidth: 300)
  }
}

enum SidebarPane {
  case helloWorld
  case whatsUp
  case moreStuff
  func name() -> String {
    switch self {
    case .helloWorld: return "Documents"
    case .whatsUp: return "Desktop"
    case .moreStuff: return "Downloads"
    }
  }
}

extension SidebarPane: Equatable, Identifiable { var id: Self { self } }
