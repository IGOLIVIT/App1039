//
//  SettingsView.swift
//  App1039
//
//  Created by IGOR on 12/11/2024.
//

import SwiftUI
import StoreKit

struct SettingsView: View {
    var body: some View {
        
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack {
                
                Text("Settings")
                    .foregroundColor(.white)
                    .font(.system(size: 34, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 20)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(spacing: 8) {
                        
                        Button(action: {
                            
                            guard let url = URL(string: "https://www.termsfeed.com/live/4268c3b4-3893-4002-abe4-c1cd91df1d28") else { return }
                            
                            UIApplication.shared.open(url)
                            
                        }, label: {
                            
                            HStack {
                                
                                Image(systemName: "doc.text.magnifyingglass")
                                    .foregroundColor(Color("prim"))
                                    .font(.system(size: 26, weight: .semibold))
                                
                                Text("Usage Policy")
                                    .foregroundColor(.white)
                                    .font(.system(size: 17, weight: .regular))
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .medium))
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .frame(height: 70)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg2")))
                        })
                        
                        Button(action: {
                            
                            SKStoreReviewController.requestReview()
                            
                        }, label: {
                            
                            HStack {
                                
                                Image(systemName: "star")
                                    .foregroundColor(Color("prim"))
                                    .font(.system(size: 26, weight: .semibold))
                                
                                Text("Rate our app")
                                    .foregroundColor(.white)
                                    .font(.system(size: 17, weight: .regular))
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .medium))
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .frame(height: 70)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg2")))
                        })
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    SettingsView()
}
