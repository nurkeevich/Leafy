//
//  SocialLoginView.swift
//  Leafy
//
//  Created by tilekbek kadyrov on 6/21/20.
//  Copyright © 2020 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct SocialLoginView: View {
    private let coordinator = SignInWithAppleCoordinator()
    private let signInWithGoogle = SignInWithGoogle()
    
    var body: some View {
        VStack {
            SignInWithApple()
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: 45)
                .onTapGesture {self.coordinator.startSignInWithAppleFlow()}
            Button(action: self.signInWithGoogle.attemptLoginGoogle) {
                HStack {
                    Image("glogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    Text("Sign in with Google")
                        .font(.system(size: 16))
                        .bold()
                }
                .foregroundColor(Color.white)
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: 45)
                .background(Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
                .cornerRadius(8)
            }
        }
    }
}

struct SocialLoginView_Previews: PreviewProvider {
    static var previews: some View {
        SocialLoginView()
    }
}
