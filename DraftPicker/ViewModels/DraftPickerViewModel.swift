//
//  DraftPickerViewModel.swift
//  DraftPicker
//
//  Created by Mark Skurat on 8/30/22.
//

import Foundation


class DraftPickerViewModel: ObservableObject {
    
    let teamKey: String = "team_list"
    
    @Published var selectedTeams = "..."
    
    @Published var teams: [TeamNameModel] = [] {
        didSet {
            saveTeamName()
        }
    }
    
    init() {
        getItems()
    }
    // decodes data back to team names
    func getItems() {
        
        guard
            let data = UserDefaults.standard.data(forKey: teamKey),
            let savedTeamName = try? JSONDecoder().decode([TeamNameModel].self, from: data)
        else { return }
        
        self.teams = savedTeamName
    }
    
    func delete(indexSet: IndexSet) {
        teams.remove(atOffsets: indexSet)
    }
    
    func addTeamName(teamName: String) {
        let newName = TeamNameModel(teamName: teamName)
        teams.append(newName)
        
    }
    
    // converts team models to json data then back to team model
    func saveTeamName() {
        if let encodedData = try? JSONEncoder().encode(teams) {
            UserDefaults.standard.set(encodedData, forKey: teamKey)
        }
    }
    
    func shuffleTeams() {
        teams.shuffle()
    }
}
