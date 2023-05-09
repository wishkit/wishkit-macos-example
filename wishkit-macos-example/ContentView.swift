//
//  ContentView.swift
//  wishkit-macos-example
//
//  Created by Martin Lasek on 3/4/23.
//  Copyright © 2023 Martin Lasek. All rights reserved.
//

import SwiftUI
import WishKit

struct ContentView: View {

    init() {
        WishKit.configure(with: "0269EE13-3390-4003-9AEA-A69ADACFAE7C")

        // Show the status badge of a wish
        WishKit.config.statusBadge = .show

        // Hide the segmented control (Requested/Implemented)
        WishKit.config.buttons.segmentedControl.display = .hide

        // Set the secondary color (this is for the cells and text fields).
        WishKit.theme.secondaryColor = Theme.Scheme(light: .yellow.opacity(1/3), dark: .white.opacity(1/3))

        // Set the tertiary color (this is for the background).
        WishKit.theme.tertiaryColor = Theme.Scheme(light: .brown, dark: .blue)

        // Change any text used by wishkit (assign localized strings to support different languages).
        WishKit.config.localization.requested = "New"
    }

    var body: some View {
        WishKit.view
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
