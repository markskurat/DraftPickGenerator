//
//  ListRowView.swift
//  DraftPicker
//
//  Created by Mark Skurat on 8/30/22.
//

import SwiftUI

struct ListRowView: View {
    
    @EnvironmentObject var vm: DraftPickerViewModel
    
    let team: TeamNameModel
    
    let array8 = ["1", "2", "3", "4", "5", "6", "7", "8"]
    let array10 = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    let array12 = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"]
    
    var body: some View {
        
        Text(team.teamName)
            .foregroundColor(.accentColor)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var team1 = TeamNameModel(teamName: "Mark")
    
    static var previews: some View {
        ListRowView(team: team1)
            .environmentObject(DraftPickerViewModel())
    }
}
