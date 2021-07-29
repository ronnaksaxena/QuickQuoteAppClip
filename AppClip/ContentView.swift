//
//  ContentView.swift
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

struct ContentView: View {
    
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var zipCode: String = ""
    @State private var carModel: String = ""
    
    @State private var isCarPickerShowing = false
    @State private var isTicketOrViolation = false
    @State private var isAccidentsOrClaims = false
    @State private var currentCarInsurance = false
    
    
    var body: some View {
        
        
        
        NavigationView {
            VStack {
                VStack {
                    Rectangle()
                        .overlay(
                            Image("welcome-header")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        )
                        .frame(height: 150)
                        .ignoresSafeArea()
                }
                
                TRVProgressIndicator(level: 1)
                
                TRVLabel(text: "Enter Driver Details", systemImage: "", font: .largeTitle)
                    .padding(5)
                
                VStack(alignment: .leading) {
                    Spacer()
                    TRVTextField(label: "First Name", value: $firstName)
                        .padding(.vertical)
                    TRVTextField(label: "Last Name", value: $lastName)
                        .padding(.vertical)
                    TRVTextField(label: "Zip Code", value: $zipCode)
                        .padding(.vertical)
                    Toggle(isOn: $currentCarInsurance){
                        Text("Do you currently have car insurance?")
                    }
                }
                .padding()
                
                
                
                
                NavigationLink(destination: VehicleHistory()) {
                    Text("VEHICLE DETAILS").bold().trvPrtmaryButton()
                }
                .padding()
                
                Footer()
            }
            .hiddenNavigationBarStyle()
            
            
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
