//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Акмарал Тажиева on 16.01.2023.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailed(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)) {
                        
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailed(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
        .tint(Color(.label))
        
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}

