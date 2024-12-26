//
//  ContentView.swift
//  App1039
//
//  Created by IGOR on 12/11/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var current_tab: Tab = Tab.Timetable
    
    @AppStorage("status") var status: Bool = false
    
    init() {
        
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack(spacing: 0, content: {
                
                TabView(selection: $current_tab, content: {
                    
                    TimetableView()
                        .tag(Tab.Timetable)
                    
                    SettingsView()
                        .tag(Tab.Settings)
                    
                })
                
                TabBar(selectedTab: $current_tab)
            })
            .ignoresSafeArea(.all, edges: .bottom)
            .onAppear {
                
            }
        }
    }
}

#Preview {
    ContentView()
}
