//
//  Amount.swift
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

struct Amount: View {
    var value: Int
    var body: some View {
        HStack(spacing: 2) {
            Text("$")
                .font(.headline)
                .bold()
                .offset(y: -4)
            Text("\(value)")
                .font(.title)
                .bold()
            Text(".00")
                .font(.headline)
                .bold()
                .offset(y: -5)
        }
    }
}

struct Amount_Previews: PreviewProvider {
    static var previews: some View {
        Amount(value: 900)
    }
}
