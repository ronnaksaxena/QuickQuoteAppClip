//
//  TRVTextField.swift
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

struct TRVTextField: View {
    var label: String
    @Binding var value: String
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(label.uppercased())
                .font(.caption)
            
            VStack(alignment: .leading , spacing: 4) {
                TextField("", text: $value )
                    .font(.body)
                Rectangle()
                    .frame(maxWidth: 1000, minHeight: 1, maxHeight: 1)
            }
           
        }
    }
}

struct TRVTextField_Previews: PreviewProvider {
    static var previews: some View {
        TRVTextField(label: "First Name", value: .constant("Danny"))
    }
}
