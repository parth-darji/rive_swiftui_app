//
//  OnboardingView.swift
//  RiveLearningApp
//
//  Created by Parth Darji on 12/30/24.
//

import SwiftUI
import RiveRuntime

struct OnboardingView: View {
    let button = RiveViewModel(fileName: "button");
    
    var body: some View {
        ZStack{
            background
            
            VStack(alignment: .leading, spacing: 16) {
                    Text("Learn design & code")
                    .font(.custom("Poppins Bold", size: 60, relativeTo: .largeTitle))
                    .frame(width: 260, alignment: .leading)
                
                Text("Don’t skip design. Learn design and code, by building real apps with React and Swift. Complete courses about the best tools.")
                    .customFont(.body)
                    .opacity(0.7)
                
                Spacer()
                
                button.view()
                    .frame(width: 236, height: 64)
                    .overlay(
                        Label("Start the course", systemImage: "arrow.forward")
                            .offset(x:4, y:4)
                            .font(.headline)
                        
                    ) .background(
                        Color.black
                            .cornerRadius(30)
                            .blur(radius: 10)
                            .opacity(0.3)
                            .offset(y: 10)
                    ).onTapGesture {
                        button.play(animationName: "active")
                    }
                
                Text("Purchase includes access to 30+ courses, 240+ premium tutorials, 120+ hours of videos, source files and certificates.")
                    .customFont(.footnote)
            }
        }
    }
    
    var background: some View {
        RiveViewModel(fileName: "shapes").view()
            .ignoresSafeArea()
            .blur(radius: 30)
            .background(Image("Spline")
                .blur(radius: 50)
                .offset(x: 200, y: 100)
            )
    }
}

#Preview {
    OnboardingView()
}
