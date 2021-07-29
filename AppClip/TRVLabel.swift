//
//  TRVLabel.swift
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

struct TRVLabel: View {
    var text: String
    var systemImage: String?
    var font: Font?
    
    var body: some View {
        if (font != nil) {
            Label(text, systemImage: systemImage ?? "").font(font)
        } else {
            Label(text, systemImage: systemImage ?? "")
        }
    }
}

struct TRVLabel_Previews: PreviewProvider {
    static var previews: some View {
        let font: Font = .title3
        TRVLabel(text: "Test", systemImage: "bolt.fill", font: font)
    }
}
