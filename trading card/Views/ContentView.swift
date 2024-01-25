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
                    DetailView(
                        player: kevin
                    )
                } label: {
                    ListView(
                        PlayerName: kevin.Playername,
                        plaerImage: kevin.PlayerImage,
                        description: "SF"
                    )
                }
                
                NavigationLink {
                    DetailView(
                        player: jimmy
                    )
                } label: {
                    ListView(
                        PlayerName: jimmy.Playername,
                        plaerImage: jimmy.PlayerImage,
                        description: "SF"
                    )
                }
                
                NavigationLink {
                    DetailView(
                        player: Ber
                    )
                } label: {
                    ListView(
                        PlayerName: Ber.Playername,
                        plaerImage: Ber.PlayerImage,
                        description: "FG"
                    )
                }
                NavigationLink {
                    DetailView(
                        player: Myers
                    )
                } label: {
                    ListView(
                        PlayerName: Myers.Playername,
                        plaerImage: Myers.PlayerImage,
                        description: "PF"
                    )
                }
                
                .navigationTitle("Trading Cards")
                
            }
        }
        
        
    }
    
}


#Preview {
    ContentView()
}
