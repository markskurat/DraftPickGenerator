//
//  ListView.swift
//  DraftPicker
//
//  Created by Mark Skurat on 8/30/22.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var vm: DraftPickerViewModel
    @Environment(\.presentationMode) var presentationMode
    
    @State var numberOfleagueMates = ["...","8", "10", "12"]
    
    @State var text: String = ""
    
    
    
    var body: some View {
        NavigationView {
            VStack {
                VStack(spacing: 10) {
                    
                    pickerView
                    addTeams
                    
                    List {
                        ForEach(Array(vm.teams.enumerated()), id: \.element) { index, team in
                            let n = index+1
                            HStack {
                                Text(String(n))
                                ListRowView(team: team)
                            }
                        }
                        .onDelete(perform: vm.delete)
                    }
                    .listStyle(PlainListStyle())
                    .navigationTitle("Randomizor")
                }
                
                .toolbar {
                    
                    ToolbarItem(placement: .navigationBarLeading) {
                        if !vm.teams.isEmpty {
                            Button {
                                vm.teams.removeAll()
                            } label: {
                                Text("Clear")
                            }
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        if !vm.teams.isEmpty {
                            Button {
                                vm.shuffleTeams()
                            } label: {
                                HStack(spacing: 2) {
                                    Text("Shuffle")
                                    Image(systemName: "shuffle")
                                }
                            }
                        }
                    }
                    
                }
            }
        }
        
    }
    func saveButtonPressed() {
        vm.addTeamName(teamName: text)
        presentationMode.wrappedValue.dismiss()
    }
    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
            .environmentObject(DraftPickerViewModel())
    }
}

extension ListView {
    
    var pickerView: some View {
        HStack {
            Text("Number of leage mates:")
            
            Picker("Please choose number of teams in your league!", selection: $vm.selectedTeams) {
                ForEach(numberOfleagueMates, id: \.self) {
                    Text($0)
                }
            }
            .foregroundColor(.accentColor)
        }
        .foregroundColor(.accentColor)
    }
    
    var addTeams: some View {
        HStack {
            if vm.selectedTeams != "..." {
                NavigationLink("Add teams", destination: AddTeamView())
                    .opacity(vm.selectedTeams == "..." ? 0.0 : 1.0)
                
            }
            
        }
        .foregroundColor(.accentColor)
    }
}

extension Collection {
    var enumerated: Zip2Sequence<PartialRangeFrom<Int32>, Self> { zip(1..., self) }
}


