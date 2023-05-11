//
//  ContentView.swift
//  Swift_TA_RegisterScreen
//
//  Created by Brian Moyou on 28.02.23.
//

import SwiftUI

struct ContentView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    @State var selGender: Gender = .female
    @State var sliderValue: Double = 50.0

    var body: some View {
        VStack(alignment: .leading) {
            ScrollView {
            Text("Registration Screen")
                    .foregroundColor(.purple)
                    .font(.title)
                    .padding()
                
                EmailView(email: $email)
                    .padding()
                Password(password: $password)
                    .padding()
                ConfirmPassword(confirmPassword: $confirmPassword)
                    .padding()
                GenderView(selGender: $selGender)
                HeightView(sliderValue: $sliderValue)
                    .padding()
                RegisterButton(email: $email, password: $password, confirmPassword: $confirmPassword, gender: $selGender, height: $sliderValue)
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
