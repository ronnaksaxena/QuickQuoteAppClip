//
//  AgentContact.swift
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

struct AgentContact: View {
    var body: some View {
        VStack {
            Text("Need help?")
                .bold()
            HStack {
                Image(systemName: "phone")
                    .font(.title2)
                    .foregroundColor(Color(#colorLiteral(red: 0.1332536936, green: 0.5217471719, blue: 0.6397706866, alpha: 1)))
                Text("Contact us")
                    .fixedSize()
                    .padding(.trailing)
               
                Link("(800)123-4567", destination: URL(string: "tel:8001234567")!)
                    .fixedSize()
                    .padding()
                    .font(.title3)
                    .foregroundColor(Color(#colorLiteral(red: 0.1332536936, green: 0.5217471719, blue: 0.6397706866, alpha: 1)))
                    .lineLimit(1)
               
            }
            .padding()
        }
    }
}

struct AgentContact_Previews: PreviewProvider {
    static var previews: some View {
        AgentContact()
    }
}
