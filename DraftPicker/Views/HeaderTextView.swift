//
//  HeaderTextView.swift
//  DraftPicker
//
//  Created by Mark Skurat on 8/30/22.
//

import SwiftUI

struct HeaderTextView: View {
    
    @Binding var text: String
    
    var body: some View {
        TextField("Type team name in here...", text: $text)
            
            .padding()
            .background(Color.gray.opacity(0.15))
            .cornerRadius(12)
    }
}

struct HeaderTextView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderTextView(text: .constant(""))
    }
}
