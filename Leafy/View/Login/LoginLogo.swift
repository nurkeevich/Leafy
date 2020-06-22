//
//  LoginLogo.swift
//  Leafy
//
//  Created by tilekbek kadyrov on 6/21/20.
//  Copyright © 2020 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct LoginLogo: View {
    var body: some View {
        Image("logo")
            .resizable()
            .scaledToFit()
            .frame(height: 150)
    }
}

struct LoginLogo_Previews: PreviewProvider {
    static var previews: some View {
        LoginLogo()
    }
}
