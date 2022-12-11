//
//  SecondTabViewModel.swift
//  hwSkeletonApp
//
//  Created by Sasha Kurganova on 10.12.2022.
//

import SwiftUI

final class SecondTabViewModel: ObservableObject {
    @Published var isShowDetailedScreen = false

    @Published private(set) var listThings = {
        (0...10).map {
            SecondTabThingsModel(name: "thing №\($0)", image: "red-panda")
        }
    }()
}
