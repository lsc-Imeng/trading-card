//
//  ListView.swift
//  trading card
//
//  Created by 孟元森 on 2024-01-23.
//

import SwiftUI

struct ListView: View {
    let PlayerName: String
    let plaerImage: String
    let description: String
    var body: some View {
        HStack {
            VStack{
                Image(plaerImage)
                    .resizable()
                    .frame(width: 80, height: 90)
            }
        }
        VStack {
            HStack {
                Text(PlayerName)
                    .font(Font.system(size: 20, weight: .semibold))
                
                Spacer()
            }
            HStack {
                Text(description)
                    .font(Font.system(size: 16, weight: .thin))
                Spacer()
            }
        }
        Spacer()
    }
}

#Preview {
    ListView(PlayerName: "Russel", plaerImage: "Russel", description: "PG")
}
