//
//  GenderView.swift
//  Swift_TA_RegisterScreen
//
//  Created by Bernadette Werneke on 11.05.23.
//

import SwiftUI

enum Gender: String, Identifiable, CaseIterable {
    case male, female, diverse, na
    var id: Self {self}
    var description: String {
        
        switch self {
            case .male: return "male"
            case .female: return "female"
            case .diverse: return "diverse"
            case .na: return "na"
        }
    }
}
   
struct GenderView: View {
    @Binding var selGender: Gender
    
    var body: some View {
        
        VStack{
            Text("Gender")
            Picker("Gender", selection: $selGender) {
                ForEach(Gender.allCases) { gender in
                    Text(String(describing: gender))
                    }
                }
            }
        }
    }


struct GenderView_Previews: PreviewProvider {
    static var previews: some View {
        GenderView(selGender: .constant(Gender.female))
    }
}
