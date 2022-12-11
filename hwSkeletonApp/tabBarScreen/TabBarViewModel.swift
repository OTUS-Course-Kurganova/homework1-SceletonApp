//
//  TabBarViewModel.swift
//  hwSkeletonApp
//
//  Created by Sasha Kurganova on 10.12.2022.
//

import SwiftUI

final class TabBarViewModel: ObservableObject {
    @Published var tabSelection: Int = 0

    @State var textRepresentableLabel = String("I'm  UILabel :)")
}
