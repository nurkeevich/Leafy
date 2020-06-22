//
//  SignInWithEmailAndPasswordView.swift
//  Leafy
//
//  Created by tilekbek kadyrov on 6/21/20.
//  Copyright © 2020 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct SignInWithEmailAndPasswordView: View {
    @EnvironmentObject var session: SessionStore
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var error: String = ""
    @State private var goButtonDisabled: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            VStack {
                HStack {
                    Image(systemName: "envelope")
                        .foregroundColor(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
                    TextField("Email address", text: $email)
                        .keyboardType(.emailAddress)
                }
                Divider()
            }
            VStack {
                HStack(spacing: 15) {
                    Image(systemName: "lock")
                        .foregroundColor(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
                    SecureField("Password", text: $password)
                }
                Divider()
            }
            
            Button(action: signIn) {
                Text("Go")
                    .font(.system(size: 22))
                    .bold()
                    .frame(height: 45)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .background(Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)))
                    .cornerRadius(8)
                    .foregroundColor(Color.white)
            }.disabled(self.email != "" && self.password != "" ? false : true)
            
            if error != "" {
                Text(error)
                    .foregroundColor(Color.red)
            }
        }
    }
    
    private func signIn() {
        self.session.loading = true
        session.signIn(email: email, password: password) { (result, error) in
            if let error = error {
                self.error = error.localizedDescription
            } else {
                self.email = ""
                self.password = ""
            }
            self.password = ""
            self.session.loading = false
        }
    }
}

struct SignInWithEmailAndPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        SignInWithEmailAndPasswordView()
    }
}
