//
//  DraftPickerApp.swift
//  DraftPicker
//
//  Created by Mark Skurat on 8/30/22.
//

import SwiftUI

@main
struct DraftPickerApp: App {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor(Color.accentColor)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor(Color.accentColor)]
    }
    
    @StateObject var vm: DraftPickerViewModel = DraftPickerViewModel()
    
    var body: some Scene {
        WindowGroup {
            ListView()
                .environmentObject(vm)
            
        }
    }
}
