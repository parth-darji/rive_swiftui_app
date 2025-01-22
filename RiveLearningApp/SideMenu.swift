//
//  SideMenu.swift
//  RiveLearningApp
//
//  Created by Parth Darji on 1/21/25.
//

import SwiftUI
import RiveRuntime

struct SideMenu: View {
    let icon = RiveViewModel(fileName: "icons", stateMachineName: "HOME_interactivity", artboardName: "HOME")
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person")
                    .padding(12)
                    .background(.white.opacity(0.2))
                    .mask(Circle())
                VStack(alignment: .leading, spacing: 2) {
                    Text("Parth Darji")
                        .customFont(.body)
                    Text("Software Engineer")
                        .customFont(.subheadline)
                        .opacity(0.7)
                }
                Spacer()
            }
            .padding()
            
            HStack {
                icon.view()
                    .frame(width: 32, height: 32)
                    .opacity(0.6)
                Text("Home")
                    .customFont(.headline)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(12)
          
            
            Spacer()
        }
        .foregroundColor(.white)
        .frame(maxWidth: 288, maxHeight: .infinity)
        .background(Color(hex: "12203A"))
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    SideMenu()
}
