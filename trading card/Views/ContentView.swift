//
//  ContentView.swift
//  trading card
//
//  Created by 孟元森 on 2024-01-19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        NavigationStack {
            
            List {
                NavigationLink {
                    DetailView(player: russel)
                } label: {
                    ListView(
                        PlayerName: russel.Playername,
                        plaerImage: russel.PlayerImage,
                        description: "PG"
                    )
                }
                
                NavigationLink {
                    DetailView(player: kevin)
                } label: {
                    ListView(PlayerName: "kevin", plaerImage: "Kevin", description: "PG")
                }
                
                NavigationLink {
                    DetailView(player: jimmy)
                } label: {
                    ListView(PlayerName: "Russel", plaerImage: "Russel", description: "PG")
                }
            }
            .navigationTitle("Trading Cards")
            
        }

        
        
    }
    
}


#Preview {
    ContentView()
}
