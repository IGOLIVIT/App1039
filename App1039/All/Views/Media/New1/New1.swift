//
//  New1.swift
//  App1039
//
//  Created by IGOR on 12/11/2024.
//

import SwiftUI

struct New1: View {
    
    @StateObject var viewModel = MediaViewModel()
    @Environment(\.presentationMode) var route
    
    var body: some View {
        
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 18) {
                
                ZStack {
                    
                    Text("Article")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .semibold))
                    
                    HStack {
                        
                        Button(action: {
                            
                            route.wrappedValue.dismiss()
                            
                        }, label: {
                            
                            Image(systemName: "chevron.left")
                                .foregroundColor(Color("prim"))
                                .font(.system(size: 18, weight: .regular))
                            
                            Text("Back")
                                .foregroundColor(Color("prim"))
                                .font(.system(size: 16, weight: .regular))
                        })
                        
                        Spacer()
                    }
                }
                .padding(.bottom)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(alignment: .leading, spacing: 15) {
                        
                        Text("Javale McGee: With LeBron, I felt needed, and on Curry's team I was just a statistic")
                            .foregroundColor(.white)
                            .font(.system(size: 22, weight: .semibold))
                        
                        HStack {
                            
                            Text("Basketball")
                                .foregroundColor(.gray)
                                .font(.system(size: 15, weight: .regular))
                                .padding(6)
                                .padding(.horizontal, 5)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.1)))
                            
                            HStack {
                                
                                Image(systemName: "calendar")
                                    .foregroundColor(Color("prim"))
                                    .font(.system(size: 14, weight: .regular))
                                
                                Text("11.10.2024")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 15, weight: .regular))
                            }
                            .padding(6)
                            .padding(.horizontal, 5)
                            .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.1)))
                            
                            Spacer()
                        }
                        
                        Text("""
Centre Javale McGee, formerly of the Sacramento Kings in the NBA, revealed why
he chose to play with LeBron James for the Los Angeles Lakers over Stephen Curry for
the Golden State Warriors. This news will
be of interest to NBA fans and fans of online basketball betting, because we are talking about the choice between two star partners and leaders of their teams.
""")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .regular))
                        
                        Image("n1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Text("""
"Playing for the Lakers, I felt much more comfortable because I had a starting centre role there and more opportunities to influence the game. I got more playing time and had the ball more often," McGee shared on the Dwight Howard Podcast. - "At Warriors, I was only on the court for eight minutes a game, doing only simple tasks and hardly participated in team training, focusing mainly on keeping fit. If I dared to shoot from long range, I was quickly sent to the bench. McGee said his role at Golden State was limited and didn't allow him to showcase his skills to the fullest, while with the Lakers he felt like a full-fledged member of the team, able to actively influence the game.
""")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .regular))
                    }
                }
                
            }
            .padding()
        }
    }
}

#Preview {
    New1()
}
