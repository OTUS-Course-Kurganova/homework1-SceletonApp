//
//  ModalView.swift
//  hwSkeletonApp
//
//  Created by Sasha Kurganova on 11.12.2022.
//

import SwiftUI

struct ModalView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ScrollView {
            VStack {
                Image(systemName: "cloud.sun.rain.fill")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.quaternary, .orange)
                    .padding(.top, 100)
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Close")
                        .font(.system(size: 40))
                        .foregroundColor(.teal)
                }
                .padding(.top, 100)
            }
        }
        .scrollIndicators(.hidden)
        .onAppear {
            UIScrollView.appearance().bounces.toggle()
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
