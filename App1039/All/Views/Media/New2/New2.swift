//
//  New2.swift
//  App1039
//
//  Created by IGOR on 12/11/2024.
//

import SwiftUI

struct New2: View {
    
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
                        
                        Text("Team Falcons demand disqualification of AVULUS after aggressive actions of their captain")
                            .foregroundColor(.white)
                            .font(.system(size: 22, weight: .semibold))
                        
                        HStack {
                            
                            Text("Cybersport")
                                .foregroundColor(.gray)
                                .font(.system(size: 15, weight: .regular))
                                .padding(6)
                                .padding(.horizontal, 5)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.1)))
                            
                            HStack {
                                
                                Image(systemName: "calendar")
                                    .foregroundColor(Color("prim"))
                                    .font(.system(size: 14, weight: .regular))
                                
                                Text("10.10.2024")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 15, weight: .regular))
                            }
                            .padding(6)
                            .padding(.horizontal, 5)
                            .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.1)))
                            
                            Spacer()
                        }
                        
                        Text("""
The cybersports organisation Team Falcons has called on the management of the PGL Wallachia Season 2 tournament to expel
the AVULUS team after an incident with
their captain Akbar SoNNeikO Butaev. The conflict erupted before one of the matches
of the tournament, which attracted the attention of not only spectators, but also
fans of betting on cybersports, when Butaev, according to representatives of the Falcons, threatened physical violence to their player Ammar ATF Assaf.
""")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .regular))
                        
                        Image("n2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Text("""
According to Team Falcons, Butaev approached Ammar, put his arm around him and then began to threaten him, provoking
him to go outside to confront him. The staff
of both teams and the organisers were not immediately able to defuse the situation,
and everything happened in front of the tournament operator PGL officials. As a result of the incident, PGL limited the sanction
to a reduction of time for AVULUS at the
draft stage, which caused discontent of the Falcons. In their opinion, this punishment
does not match the seriousness of the offence. Team Falcons expressed gratitude
to the organisers for the security measures,
in particular for the provision of a security guard, but stressed that they demanded tougher sanctions against Butaev's team,
up to and including their suspension from
the tournament. If their demand is not met,
the club will consider boycotting further
PGL Wallachia Season 2 matches.
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
    New2()
}
