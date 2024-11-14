//
//  MediaView.swift
//  App1039
//
//  Created by IGOR on 12/11/2024.
//

import SwiftUI

struct MediaView: View {
    
    @StateObject var viewModel = MediaViewModel()
    
    var body: some View {

        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack {
                
                Text("Media")
                    .foregroundColor(.white)
                    .font(.system(size: 34, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 20)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(spacing: 8) {
                        
                        Image("n1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Text("Javale McGee: With LeBron, I felt needed, and on Curry's team I was just a statistic")
                            .foregroundColor(.white)
                            .font(.system(size: 22, weight: .semibold))
                            .multilineTextAlignment(.leading)
                        
                        Button(action: {
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isNew1 = true
                            }
                            
                        }, label: {
                            
                            HStack {
                                
                                Text("Go to article \(Image(systemName: "arrow.up.right"))")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 15, weight: .regular))
                            }
                        })
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom)
                        
                        Image("n2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Text("Team Falcons demand disqualification of AVULUS after aggressive actions of their captain")
                            .foregroundColor(.white)
                            .font(.system(size: 22, weight: .semibold))
                            .multilineTextAlignment(.leading)
                        
                        Button(action: {
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isNew2 = true
                            }
                            
                        }, label: {
                            
                            HStack {
                                
                                Text("Go to article \(Image(systemName: "arrow.up.right"))")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 15, weight: .regular))
                            }
                        })
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom)
                        
                        Image("n3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Text("Kasatkina defeats Mirra Andreeva in the final of a major tournament in China")
                            .foregroundColor(.white)
                            .font(.system(size: 22, weight: .semibold))
                            .multilineTextAlignment(.leading)
                        
                        Button(action: {
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isNew3 = true
                            }
                            
                        }, label: {
                            
                            HStack {
                                
                                Text("Go to article \(Image(systemName: "arrow.up.right"))")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 15, weight: .regular))
                            }
                        })
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom)
                        
                        Image("n4")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Text("Ovechkin scored his first of the season and cut the lead over Gretzky to 40 pucks")
                            .foregroundColor(.white)
                            .font(.system(size: 22, weight: .semibold))
                            .multilineTextAlignment(.leading)
                        
                        Button(action: {
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isNew4 = true
                            }
                            
                        }, label: {
                            
                            HStack {
                                
                                Text("Go to article \(Image(systemName: "arrow.up.right"))")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 15, weight: .regular))
                            }
                        })
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom)
                    }
                }
            }
            .padding()
        }
        .sheet(isPresented: $viewModel.isNew1, content: {
            
            New1()
        })
        .sheet(isPresented: $viewModel.isNew2, content: {
            
            New2()
        })
        .sheet(isPresented: $viewModel.isNew3, content: {
            
            New3()
        })
        .sheet(isPresented: $viewModel.isNew4, content: {
            
            New4()
        })
    }
}

#Preview {
    MediaView()
}
