//
//  Password.swift
//  Swift_TA_RegisterScreen
//
//  Created by Bernadette Werneke on 11.05.23.
//

import SwiftUI

struct Password: View {
    @Binding var password: String
    var body: some View {
        
        VStack(alignment: .leading){
            Text("Password")
                .bold()
            SecureField("Type an password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 200)
        }
    }
}

struct Password_Previews: PreviewProvider {
    static var previews: some View {
        Password(password: .constant(""))
    }
}
