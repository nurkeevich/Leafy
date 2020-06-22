//
//  SignInWithGoogle.swift
//  Leafy
//
//  Created by tilekbek kadyrov on 6/21/20.
//  Copyright © 2020 tilekbek kadyrov. All rights reserved.
//

import SwiftUI
import GoogleSignIn

struct SignInWithGoogle: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<SignInWithGoogle>) -> UIView {
        return UIView()
    }

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<SignInWithGoogle>) {
    }

    func attemptLoginGoogle() {
        GIDSignIn.sharedInstance()?.presentingViewController = UIApplication.shared.windows.first?.rootViewController
        GIDSignIn.sharedInstance()?.signIn()
    }
}
