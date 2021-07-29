//
//  VehicleHistory.swift
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

enum CarType: String, CaseIterable {
    case Ford = "Ford", Toyota = "Toyota", Tesla = "Tesla", BMW = "BMW"
    
    var models: [String] {
        switch self {
        case .Ford:
            return ["B-Max",
                    "Evos",
                    "Fiesta ST",
                    "Vertrek",
                    "EcoSport",
                    "Atlas"
            ]
        case .Toyota:
            return ["RAV4",
                    "RAV4 Hybrid",
                    "RAV4 Prime",
                    "Highlander"
            ]
        case .Tesla:
            return ["Model S",
                    "Model 3",
                    "Model X",
                    "Model Y"]
        case .BMW:
            return ["BMW 2 Series",
                    "BMW X6",
                    "BMW X4",
                    "BMW Z4"]
            
        }
    }
}

struct VehicleHistory: View {
    
    var carMakes = ["Ford", "Toyota", "Tesla", "BMW"]
    var carMap = [
        "Ford" : ["B-Max",
                  "Evos",
                  "Fiesta ST",
                  "Vertrek",
                  "EcoSport",
                  "Atlas"
        ],
        
        "Toyota" : ["RAV4",
                    "RAV4 Hybrid",
                    "RAV4 Prime",
                    "Highlander"
        ],
        
        "Tesla" : ["Model S",
                   "Model 3",
                   "Model X",
                   "Model Y"
        ],
        
        "BMW" : ["BMW 2 Series",
                 "BMW X6",
                 "BMW X4",
                 "BMW Z4"]
    ]
    
    @State private var carMake: String = CarType.Ford.rawValue
    @State private var carModel: String = ""
    @State private var carYear: String = ""
    
    @State private var isCarPickerShowing = false
    @State private var isTicketOrViolation = false
    @State private var isAccidentsOrClaims = false
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            VStack {
                Rectangle()
                    .overlay(
                        Image("welcome-header")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    )
                    .frame(height: 100)
                    .ignoresSafeArea()
                
               Spacer()
            }
            
            TRVProgressIndicator(level: 2)
            TRVLabel(text: "Enter Vehicle Details", systemImage: "", font: .title)
                .padding()
            Spacer()
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    TRVDropdown(label: "Vehicle Make", options: carMakes, value: $carMake)                                .padding(.vertical)
                    TRVDropdown(label: "Vehicle Model", options: carMap[carMake] ?? [], value: $carModel)                                .padding(.vertical)
                    TRVTextField(label: "Vehicle Year", value: $carYear)
                        .padding(.vertical)
                    VStack(alignment: .leading){
                        Text("In the last 5 years have you had...")
                            .bold()
                            .font(.headline)
                        Toggle(isOn: $isTicketOrViolation){
                            Text("Tickets or Violations?")
                        }
                        Toggle(isOn: $isAccidentsOrClaims){
                            Text("Accidents or Claims?")
                        }
                    }
                }
            }
            .padding()
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackButton { self.presentationMode.wrappedValue.dismiss()})
            .hiddenNavigationBarStyle()
            
            NavigationLink(destination: ReviewYourQuote()) {
                Text("GET MY QUOTE").bold().trvPrtmaryButton()
            }
            .padding()
            
            Footer()
        }
     
    
                
         
        
        
    }
}

struct VehicleHistory_Previews: PreviewProvider {
    static var previews: some View {
        VehicleHistory()
    }
}
