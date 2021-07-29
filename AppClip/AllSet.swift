//
//  AllSet.swift
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

struct AllSet: View {
    var body: some View {
        VStack(alignment: .center) {
            VStack {
                Rectangle()
                    .overlay(
                        Image("welcome-header")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    )
                    .ignoresSafeArea()
            }
                
            Text("Thank you for your time!")
                .bold()
                .padding()
            Image(systemName: "hand.thumbsup")
                .font(.largeTitle)
                .foregroundColor(.red)
                .padding()
                .background(
                    Circle()
                        .stroke(lineWidth: 3)
                        .foregroundColor(.red)
                    
                )
            
            Text("We'll get back to you in lightning speed!")
                .bold()
                .padding()
            Text("⚡️")
                .font(.system(size: 60))
                .bold()
                .padding()
            
            Spacer()
            Divider()
               
            AgentContact()
                .layoutPriority(1)
            
            Spacer()
            
            Footer()
        }
        .hiddenNavigationBarStyle()
        .navigationBarItems(leading: Image(systemName: "arrow"))
        //.padding()
        
    }
  
}

struct AllSet_Previews: PreviewProvider {
    static var previews: some View {
        AllSet()
    }
}
