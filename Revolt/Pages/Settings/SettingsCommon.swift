//
//  SettingsCommon.swift
//  Revolt
//
//  Created by Angelo on 2024-02-10.
//

import SwiftUI

fileprivate struct SettingsFieldTextField: View {
    var body: some View {
        Text("Text Field")
    }
}

struct SettingFieldNavigationItem: View {
    @EnvironmentObject var viewState: ViewState
    
    @State var includeValueIfAvailable: Bool

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SettingsSheetContainer<Content: View>: View {
    @EnvironmentObject var viewState: ViewState
    
    @Binding var showSheet: Bool
    @ViewBuilder var sheet: () -> Content
    
    var body: some View {
        NavigationView {
            sheet()
                .padding()
                .backgroundStyle(viewState.theme.background)
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button(action: {
                            showSheet = false
                        }) {
                            Text("Cancel")
                        }
                    }
                }
        }
    }
}
