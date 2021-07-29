//
//  TRVButton.swift
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

struct TRVButton: View {
    var name:String
    var action: () -> Void
    var body: some View {
        Text(name)
            .foregroundColor(.white)
            .bold()
            .font(.title)
            .padding()
            .background(Color.red)
            .onTapGesture {
                action()
            }
           
    }
}

struct TRVPrimaryButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.title)
            .padding()
            .background(Color(#colorLiteral(red: 0.8880431056, green: 0.1637304127, blue: 0.08917570859, alpha: 1)))
            .cornerRadius(10)
    }
}

extension View {
    func trvPrtmaryButton() -> some View {
        self.modifier(TRVPrimaryButton())
    }
}

struct TRVButton_Previews: PreviewProvider {
    static var previews: some View {
        TRVButton(name: "Continue") {
            print("Hello")
        }
    }
}
