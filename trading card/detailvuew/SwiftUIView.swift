//
//  SwiftUIView.swift
//  trading card
//
//  Created by 孟元森 on 2024-01-19.
//

import SwiftUI

struct SwiftUIView: View {
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
                        Text("28")
                        VStack(alignment: .center) {
                            Text("Repond")
                            Text("10")
                        }
                        VStack (alignment: .center){
                            Text("assist")
                            Text("10")
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
    SwiftUIView(PlayerImage: "Russel", Scored: "28", Repond: "10", assist: "10", Playername: "Russel", PlayerDiscription: "Russell Westbrook III (born November 12, 1988) is an American professional basketball player for the Los Angeles Clippers of the National Basketball Association (NBA). A point guard, Westbrook made his NBA debut in 2008 and became a star as a member of the Oklahoma City Thunder. He has played for five NBA teams.")
}
