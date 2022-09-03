//
//  AddTeamView.swift
//  DraftPicker
//
//  Created by Mark Skurat on 8/30/22.
//

import SwiftUI

struct AddTeamView: View {
    
    @EnvironmentObject var vm: DraftPickerViewModel
    @State var text: String = ""
    @Environment(\.presentationMode) var presentationMode
    
    @State var field1: String = ""
    @State var field2: String = ""
    @State var field3: String = ""
    @State var field4: String = ""
    @State var field5: String = ""
    @State var field6: String = ""
    @State var field7: String = ""
    @State var field8: String = ""
    @State var field9: String = ""
    @State var field10: String = ""
    @State var field11: String = ""
    @State var field12: String = ""
    
    
    var body: some View {
        
        VStack {
            
            if vm.selectedTeams == "8" {
                
                eightTeamTextField
                
                if !field1.isEmpty, !field2.isEmpty, !field3.isEmpty, !field4.isEmpty, !field5.isEmpty, !field6.isEmpty, !field7.isEmpty, !field8.isEmpty {
                    Button {
                        vm.teams.removeAll()
                        saveButtonPressed()
                    } label: {
                        Text("Save")
                            .padding()
                    }
                }
                
            } else if vm.selectedTeams == "10" {
                VStack {
                    eightTeamTextField
                    TextField("Team 9", text: $field9)
                    TextField("Team 10", text: $field10)
                }
                
                if !field1.isEmpty, !field2.isEmpty, !field3.isEmpty, !field4.isEmpty, !field5.isEmpty, !field6.isEmpty, !field7.isEmpty, !field8.isEmpty, !field9.isEmpty, !field10.isEmpty {
                    Button {
                        vm.teams.removeAll()
                        saveButtonPressed()
                    } label: {
                        Text("Save")
                            .padding()
                    }
                }
            } else if vm.selectedTeams == "12" {
                
                eightTeamTextField
                TextField("Team 9", text: $field9)
                TextField("Team 10", text: $field10)
                TextField("Team 11", text: $field11)
                TextField("Team 12", text: $field12)
                
                
                if !field1.isEmpty, !field2.isEmpty, !field3.isEmpty, !field4.isEmpty, !field5.isEmpty, !field6.isEmpty, !field7.isEmpty, !field8.isEmpty, !field9.isEmpty, !field10.isEmpty, !field11.isEmpty, !field12.isEmpty {
                    Button {
                        vm.teams.removeAll()
                        saveButtonPressed()
                    } label: {
                        Text("Save")
                            .padding()
                    }
                }
            }
        }
        .padding()
        .foregroundColor(.accentColor)
        .navigationBarTitle("Add teams 🖊")
    }
    
    func saveButtonPressed() {
        if vm.selectedTeams == "8" {
            if !field1.isEmpty, !field2.isEmpty, !field3.isEmpty, !field4.isEmpty, !field5.isEmpty, !field6.isEmpty, !field7.isEmpty, !field8.isEmpty  {
                vm.addTeamName(teamName: field1)
                vm.addTeamName(teamName: field2)
                vm.addTeamName(teamName: field3)
                vm.addTeamName(teamName: field4)
                vm.addTeamName(teamName: field5)
                vm.addTeamName(teamName: field6)
                vm.addTeamName(teamName: field7)
                vm.addTeamName(teamName: field8)
            }
            
            presentationMode.wrappedValue.dismiss()
        } else if vm.selectedTeams == "10" {
            if !field1.isEmpty, !field2.isEmpty, !field3.isEmpty, !field4.isEmpty, !field5.isEmpty, !field6.isEmpty, !field7.isEmpty, !field8.isEmpty, !field9.isEmpty, !field10.isEmpty  {
                vm.addTeamName(teamName: field1)
                vm.addTeamName(teamName: field2)
                vm.addTeamName(teamName: field3)
                vm.addTeamName(teamName: field4)
                vm.addTeamName(teamName: field5)
                vm.addTeamName(teamName: field6)
                vm.addTeamName(teamName: field7)
                vm.addTeamName(teamName: field8)
                vm.addTeamName(teamName: field9)
                vm.addTeamName(teamName: field10)
            }
            
            presentationMode.wrappedValue.dismiss()
            
        } else if vm.selectedTeams == "12" {
            if !field1.isEmpty, !field2.isEmpty, !field3.isEmpty, !field4.isEmpty, !field5.isEmpty, !field6.isEmpty, !field7.isEmpty, !field8.isEmpty, !field9.isEmpty, !field10.isEmpty  {
                vm.addTeamName(teamName: field1)
                vm.addTeamName(teamName: field2)
                vm.addTeamName(teamName: field3)
                vm.addTeamName(teamName: field4)
                vm.addTeamName(teamName: field5)
                vm.addTeamName(teamName: field6)
                vm.addTeamName(teamName: field7)
                vm.addTeamName(teamName: field8)
                vm.addTeamName(teamName: field9)
                vm.addTeamName(teamName: field10)
                vm.addTeamName(teamName: field11)
                vm.addTeamName(teamName: field12)
            }
            
            presentationMode.wrappedValue.dismiss()
        }
    }
}

struct AddTeamView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddTeamView()
        }
        .environmentObject(DraftPickerViewModel())
    }
}

extension AddTeamView {
    var textField: some View {
        
        HStack {
            TextField("Type team name in here...", text: $text)
                .padding()
                .background(Color.gray.opacity(0.15))
                .cornerRadius(12)
            
        }
    }
    
    var eightTeamTextField: some View {
        VStack {
            TextField("Team 1", text: $field1)
            TextField("Team 2", text: $field2)
            TextField("Team 3", text: $field3)
            TextField("Team 4", text: $field4)
            TextField("Team 5", text: $field5)
            TextField("Team 6", text: $field6)
            TextField("Team 7", text: $field7)
            TextField("Team 8", text: $field8)
        }
    }
}
