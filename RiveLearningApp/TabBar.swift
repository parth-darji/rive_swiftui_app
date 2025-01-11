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
            Button {
                icon.setInput("active", value: true)
                DispatchQueue.main.asyncAfter(deadline: .now()+1){
                    icon.setInput("active", value: false)
                }
            } label: {
                icon.view()
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
