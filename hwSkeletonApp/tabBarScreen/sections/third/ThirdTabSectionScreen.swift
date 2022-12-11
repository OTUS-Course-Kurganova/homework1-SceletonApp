//
//  ThirdTabSection.swift
//  hwSkeletonApp
//
//  Created by Sasha Kurganova on 10.12.2022.
//

import SwiftUI

struct ThirdTabSectionScreen: View {
    @EnvironmentObject var viewModel: ThirdTabViewModel

    var body: some View {
        VStack {
            descriptionStack
                .padding(20)
                .padding(.bottom, 100)
            Button("Click Here") {
                viewModel.isShowModal.toggle()
            }.sheet(isPresented: $viewModel.isShowModal) {
                ModalView()
            }
            .padding(40)
        }
    }

    var descriptionStack: some View {
        HStack(alignment: .center) {
            Image(systemName: "chevron.down")
                .foregroundColor(.teal)
            Text("Кнопка, открывающая модальное окно")
                .font(.system(size: 20))
                .fontWeight(.regular)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
        }
    }
}

struct ThirdTabSectionScreen_Previews: PreviewProvider {
    static var previews: some View {
        ThirdTabSectionScreen()
            .environmentObject(ThirdTabViewModel())
    }
}
