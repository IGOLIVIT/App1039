//
//  New3.swift
//  App1039
//
//  Created by IGOR on 12/11/2024.
//

import SwiftUI

struct New3: View {
    
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
                        
                        Text("Kasatkina defeats Mirra Andreeva in the final of a major tournament in China")
                            .foregroundColor(.white)
                            .font(.system(size: 22, weight: .semibold))
                        
                        HStack {
                            
                            Text("Tennis")
                                .foregroundColor(.gray)
                                .font(.system(size: 15, weight: .regular))
                                .padding(6)
                                .padding(.horizontal, 5)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.1)))
                            
                            HStack {
                                
                                Image(systemName: "calendar")
                                    .foregroundColor(Color("prim"))
                                    .font(.system(size: 14, weight: .regular))
                                
                                Text("12.10.2024")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 15, weight: .regular))
                            }
                            .padding(6)
                            .padding(.horizontal, 5)
                            .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.1)))
                            
                            Spacer()
                        }
                        
                        Text("""
Russia's top-ranked player Daria Kasatkina won her second trophy of the season after defeating 17-year-old compatriot Mirra Andreeva at the WTA-500 tournament in Ningbo, China. The match ended 6:0, 4:6, 6:4 in favour of Kasatkina. The opponents of both Russians, Spain's Paula Badosa and Czech Republic's Karolina Mukhova, withdrew from the semi-finals due to injuries.
""")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .regular))
                        
                        Image("n3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Text("""
In the live version of the WTA rankings, Andreeva moved up from 19th to 16th, while Kasatkina moved up to ninth. Kasatkina was last ranked in the top 10 in July last year. Kasatkina played in a WTA Tour final for the sixth time this season, having previously taken the title only in Eastbourne, England. Andreeva won a tournament in Romania and Olympic doubles silver with Diana Schneider this year and reached the semi-finals of Roland Garros. The champion of the tournament in Ningbo will receive 500 rating points and more than $140,000 in prize money, while the finalist will receive 325 points and $87,000.
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
    New3()
}
