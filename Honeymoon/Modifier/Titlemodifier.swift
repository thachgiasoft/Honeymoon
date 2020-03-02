//
//  Titlemodifier.swift
//  Honeymoon
//
//  Created by Zerone on 02/03/20.
//  Copyright © 2020 thobio. All rights reserved.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.pink)
    }
}

