//
//  RegisterButton.swift
//  Swift_TA_RegisterScreen
//
//  Created by Bernadette Werneke on 11.05.23.
//

import SwiftUI

struct RegisterButton: View {
    @Binding var email: String
    @Binding var password: String
    @Binding var confirmPassword: String
    @Binding var gender: Gender
    @Binding var height: Double
    
    var body: some View {
        Button{
            print(email, password, confirmPassword, gender, height)
        } label: {
            Text("Register")
        }
        .frame(width: 100, height: 40)
        .background(.purple)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(radius: 5)
    }
}

struct RegisterButton_Previews: PreviewProvider {
    static var previews: some View {
        RegisterButton(email: .constant(""), password: .constant(""), confirmPassword: .constant(""), gender: .constant(Gender.female), height: .constant(50.0))
    }
}
