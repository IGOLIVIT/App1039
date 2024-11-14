//
//  New4.swift
//  App1039
//
//  Created by IGOR on 12/11/2024.
//

import SwiftUI

struct New4: View {
    
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
                        
                        Text("Ovechkin scored his first of the season and cut the lead over Gretzky to 40 pucks")
                            .foregroundColor(.white)
                            .font(.system(size: 22, weight: .semibold))
                        
                        HStack {
                            
                            Text("Hockey")
                                .foregroundColor(.gray)
                                .font(.system(size: 15, weight: .regular))
                                .padding(6)
                                .padding(.horizontal, 5)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.1)))
                            
                            HStack {
                                
                                Image(systemName: "calendar")
                                    .foregroundColor(Color("prim"))
                                    .font(.system(size: 14, weight: .regular))
                                
                                Text("8.10.2024")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 15, weight: .regular))
                            }
                            .padding(6)
                            .padding(.horizontal, 5)
                            .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.1)))
                            
                            Spacer()
                        }
                        
                        Text("""
Russian forward Alexander Ovechkin helped the Washington Capitals defeat the New Jersey Devils in an away game of the NHL regular season and opened his goal tally for the season. "Washington" won in overtime with a score of 6:5. Ovechkin spent 17.5 minutes on the ice, took five shots and had three power plays. He scored the puck from the slot in the 15th minute, making the score 3:1. The goal was the 39-year-old Russian's 854th goal in the NHL regular season, 40 pucks away from repeating Wayne Gretzky's record of 894.
""")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .regular))
                        
                        Image("n4")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Text("""
Ovechkin is tied with Patrice Bergeron for the most goals (15) in away games against New Jersey, while the Russian has scored against opponents at 44 different venues in his career, the most by the Carolina Hurricanes (30). "Washington" won the third game in a row, its next opponent will be the Philadelphia Flyers on 23 October (1:00 Moscow time).
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
    New4()
}
