//
//  TabBar.swift
//  RiveLearningApp
//
//  Created by Parth Darji on 1/10/25.
//

import SwiftUI
import RiveRuntime

struct TabBar: View {
    let icon = RiveViewModel(fileName: "icons", stateMachineName: "CHAT_Interactivity", artboardName: "CHAT")
    
    var body: some View {
        HStack {
            ForEach(tabItems) { item in
                Button {
                    item.icon.setInput("active", value: true)
                    DispatchQueue.main.asyncAfter(deadline: .now()+1){
                        item.icon.setInput("active", value: false)
                    }
                } label: {
                    item.icon.view()
                }
            }
        }
        .background(Color("Background 2")
            .opacity(0.8)
        )
    }
}

#Preview {
    TabBar()
}

struct TabItem: Identifiable {
    var id = UUID()
    var icon: RiveViewModel
}

var tabItems = [
    TabItem(icon: RiveViewModel(fileName: "icons", stateMachineName: "CHAT_Interactivity", artboardName: "CHAT")),
    TabItem(icon: RiveViewModel(fileName: "icons", stateMachineName: "SEARCH_Interactivity", artboardName: "SEARCH")),
    TabItem(icon: RiveViewModel(fileName: "icons", stateMachineName: "TIMER_Interactivity", artboardName: "TIMER")),
    TabItem(icon: RiveViewModel(fileName: "icons", stateMachineName: "BELL_Interactivity", artboardName: "BELL")),
    TabItem(icon: RiveViewModel(fileName: "icons", stateMachineName: "USER_Interactivity", artboardName: "USER"))
]
