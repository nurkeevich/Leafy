//
//  LoginView.swift
//  Leafy
//
//  Created by tilekbek kadyrov on 6/21/20.
//  Copyright © 2020 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                LoginLogo()
                SignInWithEmailAndPasswordView()
                SocialLoginView()
                Spacer()
                NavigationLink(destination: SignUpWithEmailAndPassword()) {
                    HStack {
                        Text("Sign up")
                        Image(systemName: "arrow.right")
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 45)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(lineWidth: 1))
                }
            }
            .padding()
            .navigationBarTitle("Welcome")
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
