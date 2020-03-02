//
//  GuideView.swift
//  Honeymoon
//
//  Created by Zerone on 02/03/20.
//  Copyright © 2020 thobio. All rights reserved.
//

import SwiftUI

struct GuideView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack(alignment: .center, spacing: 20) {
                HeaderComponent()
                Spacer(minLength: 10)
                Text("Get Started!").fontWeight(.black).modifier(TitleModifier())
                
                Text("Discover and pick the perfect destination for your romantic Honeymoon!").lineLimit(nil)
                    .multilineTextAlignment(.center)
                Spacer(minLength: 10)
                VStack(alignment: .leading, spacing: 25){
                    CuideComponent(title: "Like", subtitle: "Swipe right", description: "Do you like this destination? Touch the screen and swipe right. it will be saved to the favourites.", icon: "heart.circle")
                    CuideComponent(title: "Dismiss", subtitle: "Swipe left", description: "Would you rather skip this place? Touch the screen and swipe left. you will no longer see it.", icon: "xmark.circle")
                    CuideComponent(title: "Book", subtitle: "Tap the button", description: "Our selection of honeymoon resorts is prefect setting for you to embark your new life together", icon: "checkmark.square")
                }
                Spacer(minLength: 10)
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Continue".uppercased()).modifier(ButtonModifier())
                }
            }.frame(minWidth: 0, maxWidth: .infinity)
                .padding(.top,15)
                .padding(.bottom,25)
                .padding(.horizontal,25)
        }
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
    }
}
