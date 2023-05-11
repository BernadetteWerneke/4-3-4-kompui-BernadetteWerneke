//
//  ConfirmPassword.swift
//  Swift_TA_RegisterScreen
//
//  Created by Bernadette Werneke on 11.05.23.
//

import SwiftUI

struct ConfirmPassword: View {
    @Binding var confirmPassword:String 
    var body: some View {
        
        VStack(alignment: .leading){
            Text("Confirm Password")
                .bold()
            SecureField("Confirm Your Password", text: $confirmPassword)
        }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 200)

            
    }
}

struct ConfirmPassword_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmPassword(confirmPassword: .constant(""))
    }
}
