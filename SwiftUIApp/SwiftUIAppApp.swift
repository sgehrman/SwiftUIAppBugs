//
//  SwiftUIAppApp.swift
//  SwiftUIApp
//
//  Created by Steve Gehrman on 11/15/25.
//

import Foundation
import SwiftUI

@main
struct SwiftUIAppApp: App {
  var body: some Scene { WindowGroup { ContentView() }.commands { SidebarCommands() } }
}
