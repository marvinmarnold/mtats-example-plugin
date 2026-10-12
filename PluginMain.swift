// PluginMain.swift
// SPDX-License-Identifier: MIT
import Foundation
import SwiftUI
import MTatsPluginKit

@objc(HelloWidget) class HelloWidget: NSObject, MTatsWidget {
    let id = "hello-world-example"
    let displayName = "Hello World"
    func start(interval: TimeInterval) {}
    func stop() {}
    func menuBarView() -> AnyView { AnyView(Text("👋").font(.system(size: 11))) }
    func detailView() -> AnyView { AnyView(Text("Hello from a genuinely third-party mtats plugin.").padding()) }
}

@objc(HelloPluginMain) public class HelloPluginMain: NSObject, PluginEntry {
    public static func makeWidgets() -> [MTatsWidget] { [HelloWidget()] }
}
