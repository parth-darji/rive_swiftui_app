//
//  SignInView.swift
//  RiveLearningApp
//
//  Created by Parth Darji on 1/1/25.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        Text("Sign In")
            .customFont(.largeTitle)
        Text("Access to 240+ hours of content. Learn design and code, by building real apps with React and Swift.")
            .customFont(.headline)
        Divider()
        Text("Sign up with Email, Apple or Google")
            .customFont(.subheadline)
            .foregroundColor(.secondary)
        Image("Logo Email")
    }
}

#Preview {
    SignInView()
}
