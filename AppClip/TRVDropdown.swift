//
//  TRVDropdown.swift
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

struct TRVDropdown: View {
    var label: String
    var options: [String]
    @Binding var value: String
    
    @State private var isPickerShowing = false
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 8) {
                Text(label.uppercased())
                    .font(.caption)
                
                VStack(alignment: .leading , spacing: 4) {
                    Text(value)
                        .font(.body)
                    Rectangle()
                        .frame(maxWidth: 1000, minHeight: 1, maxHeight: 1)
                }
                .onTapGesture {
                    isPickerShowing.toggle()
                }
               
            }
            
            if isPickerShowing {
                ZStack {
                    Color.white
                    VStack {
                        HStack {
                            Text(label)
                            Spacer()
                            Text(value)
                                .foregroundColor(.blue)
                            
                        }
                        Divider()
                        
                        Picker(label, selection: $value) {
                            ForEach(options, id: \.self) { option in
                                Text(option).tag(option)
                            }
                        }
                        
                        Spacer()
                        Button(action: {
                            withAnimation {
                                self.isPickerShowing = false
                            }
                           
                        }, label: {
                            Text("Close")
                        })
                    }.padding()
                }
                .frame(width: 350, height: 350)
                .cornerRadius(20).shadow(radius: 20)
            }
        }
     
    }
}

struct TRVDropdown_Previews: PreviewProvider {
    static var previews: some View {
        TRVDropdown(label: "Dropdown", options: ["one", "two", "three"], value: .constant("one"))
    }
}
