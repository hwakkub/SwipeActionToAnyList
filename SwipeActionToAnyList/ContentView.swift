//
//  ContentView.swift
//  SwipeActionToAnyList
//
//  Created by jirakit on 8/1/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var nameList = ["Ant","Bird","Cat","Dog"]
     
    var body: some View {
        VStack {
            List {
                ForEach(nameList,id: \.self) {name in
                    Text(name)
                        .padding()
                        .swipeActions{
                            Button(role: .destructive){
                                
                            } label: {
                                Label("Delete", systemImage: "trash.fill")
                            }
                        }
                        .swipeActions{
                            Button {
                                
                            } label: {
                                Label("Edit", systemImage: "square.add.pencil")
                            }.tint(.blue)
                        }
                        .swipeActions(edge:.leading) {
                            Button {
                                
                            } label: {
                                Label("Mic",systemImage: "mic.fill")
                            }.tint(.green)
                        }
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
