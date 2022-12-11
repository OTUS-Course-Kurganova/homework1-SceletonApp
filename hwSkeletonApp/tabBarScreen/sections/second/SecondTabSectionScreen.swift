//
//  SecondTabSectionScreen.swift
//  hwSkeletonApp
//
//  Created by Sasha Kurganova on 10.12.2022.
//

import SwiftUI

struct SecondTabSectionScreen: View {
    @EnvironmentObject var viewModel: SecondTabViewModel

    var body: some View {
        VStack {
            descriptionStack
                .padding(.top, 30)
            navigationView
        }
    }
    
    var descriptionStack: some View {
        HStack(alignment: .center) {
            Image(systemName: "chevron.down")
                .foregroundColor(.orange)
            Text("List, обернутый в NavigationView. Из листа переходы с NavigationLink")
                .font(.system(size: 20))
                .fontWeight(.regular)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
        }
    }

    var navigationView: some View {
        NavigationView {
            List {
                listThings
            }
            .navigationTitle("List Things")
            .background(.white)
            .overlay(overlayNavLink)
        }
    }

    var listThings: some View {
        ForEach(viewModel.listThings) { thing in
            cell(thing)
        }
    }

    func cell(_ thing: SecondTabThingsModel) -> some View {
            NavigationLink(destination: DetailThingsListScreen(title: thing.name, image: thing.image)) {
                styledSection(thing)
            }
    }

    func styledSection(_ thing: SecondTabThingsModel) -> some View {
        HStack {
            Image(thing.image)
            Text(thing.name)
        }
    }

    var overlayNavLink: some View {
        NavigationLink(destination: DetailThingsListScreen(title: viewModel.listThings[3].name,
                                                           image: viewModel.listThings[3].image),
                       isActive: $viewModel.isShowDetailedScreen) { EmptyView() }.hidden()
    }
}

struct SecondTabSectionScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabSectionScreen()
            .environmentObject(SecondTabViewModel())
    }
}
