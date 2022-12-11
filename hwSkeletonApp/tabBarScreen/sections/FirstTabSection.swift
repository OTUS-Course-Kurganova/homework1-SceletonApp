//
//  FirstTabSection.swift
//  hwSkeletonApp
//
//  Created by Sasha Kurganova on 10.12.2022.
//

import SwiftUI

struct FirstTabSectionScreen: View {
    @EnvironmentObject var tabBarViewModel: TabBarViewModel
    @EnvironmentObject var secondTabViewModel: SecondTabViewModel

    var body: some View {
        ScrollView {
            VStack {
                descriptionStack
                    .padding(.top, 50)
                navigationButton
                secondDescriptionStack
                    .padding(.top, 50)
                extraLabel
            }
        }
    }

    var descriptionStack: some View {
        HStack(alignment: .center) {
            Image(systemName: "chevron.down")
                .foregroundColor(.teal)
            Text("Кнопка, открывающая второй таб \n и один из пунктов там")
                .font(.system(size: 20))
                .fontWeight(.regular)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
        }
    }

    var navigationButton: some View {
        Button("Click Here") {
            tabBarViewModel.tabSelection = 1
            secondTabViewModel.isShowDetailedScreen.toggle()
        }
        .padding(30)
    }

    var secondDescriptionStack: some View {
        HStack(alignment: .center) {
            Image(systemName: "chevron.down")
                .foregroundColor(.orange)
            Text("один UIKit компонент через UIViewRepresantable")
                .font(.system(size: 20))
                .fontWeight(.regular)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
        }
    }

    var extraLabel: some View {
        RepresentableLabel(text: $tabBarViewModel.textRepresentableLabel)
            .padding(.top, 30)
    }
}

struct RepresentableLabel: UIViewRepresentable {
    @Binding var text: String

    func makeUIView(context: Context) -> UILabel {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .darkGray
        return label
    }

    func updateUIView(_ uiView: UILabel, context: Context) {
        uiView.text = text
    }
}

struct FirstTabSectionScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabSectionScreen()
            .environmentObject(TabBarViewModel())
            .environmentObject(SecondTabViewModel())
    }
}
