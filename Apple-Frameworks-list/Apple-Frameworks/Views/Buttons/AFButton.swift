//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Акмарал Тажиева on 16.01.2023.
//

import SwiftUI

struct AFButton: View {
    var title: String
    var body: some View {
    
        Text(title)
            .font(.title2)
            .fontWeight(.bold)
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title: "Test Title")
    }
}
