//
//  Toolbar.swift
//  SwiftUIApp
//
//  Created by Steve Gehrman on 11/19/25.
//  https://ohanaware.com/swift/macOSToolbarExamples.html
//

import SwiftUI

struct AppToolbar: CustomizableToolbarContent {
  var body: some CustomizableToolbarContent {
    ToolbarItem(id: "save", placement: .primaryAction) {
      Button("Save", systemImage: "scissors") { print("Save tapped") }
    }
    .defaultCustomization(.hidden)
    ToolbarItem(id: "delete", placement: .primaryAction) {
      Button("Delete", systemImage: "document.on.document") { print("Delete tapped") }
    }
    .defaultCustomization(.hidden)
    ToolbarItem(id: "refresh", placement: .primaryAction) {
      Button("Refresh", systemImage: "arrow.clockwise") { print("alert") }
    }
    ToolbarItem(id: "alert", placement: .primaryAction) {
      Button("Alert", systemImage: "dial.fill") { print("alert") }
    }
    ToolbarItem(id: "settings", placement: .primaryAction) {
      Button("Settings", systemImage: "gearshape") { print("alert") }
    }
    ToolbarItem(id: "rightsidebar", placement: .secondaryAction) {
      Button("Action", systemImage: "sidebar.right") { print("alert") }
    }
  }
}
