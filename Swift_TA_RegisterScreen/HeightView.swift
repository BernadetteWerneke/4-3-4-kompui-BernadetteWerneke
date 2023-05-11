//
//  HeightView.swift
//  Swift_TA_RegisterScreen
//
//  Created by Bernadette Werneke on 11.05.23.
//

import SwiftUI

struct HeightView: View {
    @Binding var sliderValue : Double
    var body: some View {
        
        VStack(alignment: .leading){
            Text("Height")
            HStack{
                Text("50.0")
                Slider(value: $sliderValue, in: 50.0...250.0)
                    .frame(width: 250)
                    .tint(.purple)
                Text("250.0")
            }
            .background(.thickMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 15))
        }
        
    }
}

struct HeightView_Previews: PreviewProvider {
    static var previews: some View {
        HeightView(sliderValue: .constant(50))
    }
}
