//
//  ContentView.swift
//  hwSkeletonApp
//
//  Created by Sasha Kurganova on 10.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBarScreen()
            .environmentObject(TabBarViewModel())
            .environmentObject(SecondTabViewModel())
            .environmentObject(ThirdTabViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
