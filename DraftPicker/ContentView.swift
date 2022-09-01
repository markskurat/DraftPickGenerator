//
//  ContentView.swift
//  DraftPicker
//
//  Created by Mark Skurat on 8/30/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var vm: DraftPickerViewModel
    
    var body: some View {
        ListView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DraftPickerViewModel())
    }
}
