//
//  EmailView.swift
//  Swift_TA_RegisterScreen
//
//  Created by Bernadette Werneke on 11.05.23.
//

import SwiftUI

struct EmailView: View {
    @Binding var email:String
    var body: some View {
        
        VStack(alignment: .leading){
            Text("Email")
                .bold()
            TextField("Type an email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 200)
        }
    }
}

struct EmailView_Previews: PreviewProvider {
    static var previews: some View {
        EmailView(email: .constant(""))
    }
}
