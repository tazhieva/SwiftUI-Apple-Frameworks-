//
//  FrameworkDetailed.swift
//  Apple-Frameworks
//
//  Created by Акмарал Тажиева on 16.01.2023.
//

import SwiftUI

struct FrameworkDetailed: View {
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    @State var isShowingSafariView = false
    
    
    var body: some View {
       
        
        FrameworkTitleView(framework: framework)
            .padding()
        Text(framework.description)
            .font(.body)
            .padding()
        
        Spacer()
        
        Button {
            isShowingSafariView = true
            
        } label: {
            AFButton(title: "Learn More")
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
        .padding()
    }
        
}

       


struct FrameworkDetailed_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailed(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}


