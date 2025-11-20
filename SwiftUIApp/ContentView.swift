//
//  ContentView.swift
//  SwiftUIApp
//
//  Created by Steve Gehrman on 11/15/25.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationSplitView {
      Sidebar()
        .navigationDestination(for: SidebarPane.self) { value in
          switch value {
          case .helloWorld: HelloWorldPane()
          case .whatsUp: WhatsUpPane()
          case .moreStuff: MoreStuffPane()
          }
        }
    } detail: {
      EmptyPane()
    }
    .toolbar(id: "my-sidebar") { AppToolbar() }
  }
}

#Preview { ContentView() }
