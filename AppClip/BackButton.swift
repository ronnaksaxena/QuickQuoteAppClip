//
//  BackButton.swift
//  AppClip
//
//  Created by The Travelers Companies, Inc. on 7/27/21.
//
// (C) Copyright 2006-2021 by The Travelers Companies, Inc.
// All Rights Reserved.
//
// This software is the confidential and proprietary information
// of The Travelers Companies, Inc. ("Confidential Information").
// Redistribution of the source code or binary form is not permitted
// without prior authorization from Travelers.

import SwiftUI

struct BackButton: View {
    var action: () -> Void
    var body: some View {
        Image(systemName: "arrow.backward")
            .font(.largeTitle)
            .foregroundColor(Color(#colorLiteral(red: 0.8880431056, green: 0.1637304127, blue: 0.08917570859, alpha: 1)))
            .onTapGesture {
                action()
            }
            
    }
}

struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton() {
            print("Hello")
        }
    }
}
