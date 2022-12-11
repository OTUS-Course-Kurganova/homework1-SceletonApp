//
//  DetailThingsListScreen.swift
//  hwSkeletonApp
//
//  Created by Sasha Kurganova on 10.12.2022.
//

import SwiftUI

struct DetailThingsListScreen: View {
    let title: String
    let image: String
    
    var body: some View {
        Text(title)
        Image(image)
    }
}

struct DetailThingsListScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailThingsListScreen(title: "", image: "")
            .environmentObject(SecondTabViewModel())
    }
}
