//
//  Detailview2.swift
//  trading card
//
//  Created by 孟元森 on 2024-01-23.
//

import SwiftUI

struct DetailView2: View {
    let PlayerImage: String
    let Scored: String
    let Repond: String
    let assist: String
    let Playername: String
    let PlayerDiscription: String
    
    
    var body: some View {
        VStack {
            ZStack  {
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: 330, height: 400)
                
                Rectangle()
                    .foregroundColor(.black)
                    .frame(width: 280, height: 350)
                
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 230, height:300)
                
                Image(PlayerImage)
                    .resizable()
                    .frame(width: 200, height:270)
             
            }
            .overlay {
                HStack {
                    Spacer()
                    VStack {
                        Spacer()
                        Image("Heatlogo")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 150, height: 150)
                        
                        
                    }
                }
                .padding(5)
            }
            
            VStack {
                Text("Heat")
                    .bold()
                    .padding(.bottom, 5)
                
                HStack(spacing:20) {
                    VStack(alignment: .center) {
                        Text("Scored")
                        Text("26")
                        VStack(alignment: .center) {
                            Text("Repond")
                            Text("8")
                        }
                        VStack (alignment: .center){
                            Text("assist")
                            Text("8")
                        }
                        VStack(alignment: .center) {
                            Text("Player Description")
                                .bold()
                                .padding(.bottom, 5)
                            Text(PlayerDiscription)
                        }
                    }
                }
                
            }
        }
        
        
    }
    
    
}











#Preview {
    DetailView2(PlayerImage: "Jimmy", Scored: "26", Repond: "8", assist: "8", Playername: "Jimmy", PlayerDiscription: "Jimmy Butler (born September 14, 1989, Houston, Texas, U.S.) American professional basketball player known for his hard-nosed intensity and standout performances in postseason games. He led the Miami Heat of the National Basketball Association (NBA) to two appearances in the NBA finals (2020 and 2023).")
}
