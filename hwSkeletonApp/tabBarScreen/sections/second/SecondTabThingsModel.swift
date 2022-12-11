//
//  SecondTabThingsModel.swift
//  hwSkeletonApp
//
//  Created by Sasha Kurganova on 10.12.2022.
//

import SwiftUI

struct SecondTabThingsModel {
    let name: String
    let image: String
}

extension SecondTabThingsModel: Identifiable {
    var id: String {
        UUID().uuidString
    }
}
