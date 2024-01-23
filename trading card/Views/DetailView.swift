//
//  SwiftUIView.swift
//  trading card
//
//  Created by 孟元森 on 2024-01-19.
//

import SwiftUI

struct DetailView: View {
    
    let player: TradingCard
    
    
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
                
                Image(player.PlayerImage)
                    .resizable()
                    .frame(width: 200, height:270)
             
            }
            .overlay {
                HStack {
                    Spacer()
                    VStack {
                        Spacer()
                        Image("ClipperLogo")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 150, height: 150)
                        
                        
                    }
                }
                .padding(5)
            }
            
            VStack {
                Text("Clipper")
                    .bold()
                    .padding(.bottom, 5)
                
                HStack(spacing:20) {
                    VStack(alignment: .center) {
                        Text("Scored")
                        Text(player.Scored)
                        VStack(alignment: .center) {
                            Text("Repond")
                            Text(player.Repond)
                        }
                        VStack (alignment: .center){
                            Text("assist")
                            Text(player.assist)
                        }
                        VStack(alignment: .center) {
                            Text("Player Description")
                                .bold()
                                .padding(.bottom, 5)
                            Text(player.PlayerDiscription)
                        }
                    }
                }
                
            }
        }
        
        
    }
    
    
}


#Preview {
    DetailView(player: russel)
}
#Preview {
    DetailView(player: kevin)
}
