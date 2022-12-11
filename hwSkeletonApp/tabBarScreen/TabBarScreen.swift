//
//  TabBarScreen.swift
//  hwSkeletonApp
//
//  Created by Sasha Kurganova on 10.12.2022.
//

import SwiftUI

struct TabBarScreen: View {
    @EnvironmentObject var tabBarViewModel: TabBarViewModel

    var body: some View {
        TabView(selection: $tabBarViewModel.tabSelection) {
            FirstTabSectionScreen()
                .tag(0)
                .tabItem {
                    Text("First")
                    Image(systemName: "rectangle.and.pencil.and.ellipsis")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.teal, .orange)
                }
            SecondTabSectionScreen()
                .tag(1)
                .tabItem {
                    Text("Second")
                    Image(systemName: "list.triangle")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.teal, .orange)
                }
            ThirdTabSectionScreen()
                .tag(2)
                .tabItem {
                    Text("Third")
                    Image(systemName: "window.shade.open")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.teal, .orange)
                }
        }
    }
}

struct TabBarScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabBarScreen()
            .environmentObject(TabBarViewModel())
    }
}
