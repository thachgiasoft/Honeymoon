//
//  CardTranstion.swift
//  Honeymoon
//
//  Created by Zerone on 02/03/20.
//  Copyright © 2020 thobio. All rights reserved.
//

import SwiftUI

extension AnyTransition {
    static var trailingBootm:AnyTransition {
        AnyTransition.asymmetric(insertion: .identity, removal: AnyTransition.move(edge: .trailing).combined(with: .move(edge: .bottom)))
    }
    static var leadingBootom:AnyTransition {
        AnyTransition.asymmetric(insertion: .identity, removal: AnyTransition.move(edge: .leading).combined(with: move(edge: .bottom)))
    }
}
