//
//  Obedsapplication1App.swift
//  Obedsapplication1

import SwiftUI

@main
struct Obedsapplication1App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            SPLASHSCREENTwoView()
        }
    }
}
