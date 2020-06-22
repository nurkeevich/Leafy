//
//  MainTabView.swift
//  Leafy
//
//  Created by tilekbek kadyrov on 6/21/20.
//  Copyright © 2020 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct MainTabView: View {
    @EnvironmentObject var session: SessionStore
    
    var body: some View {
        VStack {
            Text("Main Tab View")
            Button(action: self.session.signOut) { Text("Sign out") }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
