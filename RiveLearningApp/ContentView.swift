//
//  ContentView.swift
//  RiveLearningApp
//
//  Created by Parth Darji on 12/30/24.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("selectedTab") var selectedTab: Tab = .chat
    
    var body: some View {
        ZStack {
            Text("Chat")
            TabBar()
        }
    
    }
}

#Preview {
    ContentView()
}
