//
//  TRVProgressIndicator.swift
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

struct TRVProgressIndicator: View {
    var level: Int
    var body: some View {
        
        HStack {
            ForEach(0..<3) { index in
                Rectangle()
                    .frame(width: 50, height: index < level ? 8 : 5)
                    .foregroundColor( index < level ? Color(#colorLiteral(red: 0.8880431056, green: 0.1637304127, blue: 0.08917570859, alpha: 1)) : Color(#colorLiteral(red: 0.6019306779, green: 0.6792843938, blue: 0.7413882613, alpha: 1)))
            }
            
            
        }
    }
}

struct TRVProgressIndicator_Previews: PreviewProvider {
    static var previews: some View {
        TRVProgressIndicator(level: 2)
    }
}
