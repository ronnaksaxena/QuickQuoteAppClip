//
//  ReviewYourQuote.swift
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

struct ReviewYourQuote: View {
    var body: some View {
        VStack {
            Image("welcome-header")
                .resizable()
                .aspectRatio(contentMode: .fill)

            TRVProgressIndicator(level: 3)
            ReviewYourQuoteContent()
            Spacer()
            
        }
        .hiddenNavigationBarStyle()
    }
}




struct ReviewYourQuote_Previews: PreviewProvider {
    static var previews: some View {
        ReviewYourQuote()
    }
}

fileprivate struct ReviewYourQuoteContent: View {
    @State private var quoteAmount = 900
    @State private var email = ""
    @State private var bundle = false
    var body: some View {
        VStack(spacing: 3) {
            VStack {
                Text("Your Tesla")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color(#colorLiteral(red: 0.288633585, green: 0.3570312858, blue: 0.4827097654, alpha: 1)))
                Text("'21 Tesla Model 3")
                    .font(.headline)
                    .foregroundColor(Color(#colorLiteral(red: 0.288633585, green: 0.3570312858, blue: 0.4827097654, alpha: 1)))
            }
            
            
            VStack {
                Text("6 MO. PREMIUM")
                    .font(.headline)
                    .bold()
                Amount(value: quoteAmount)
                Text("Estimates may vary by up to 10%")
                    .font(.caption)
            }
            .frame(height: 150)
            
            VStack {
                Text("Enter your email to find out more!")
                    .bold()
                    .padding()
                TRVTextField(label: "Email", value: $email)
                    .padding()
                
                
            }
            .padding()
            
            Spacer()
            
            NavigationLink(destination: AllSet()) {
                Text("FINISH")
                    .bold()
                    .frame(width: UIScreen.main.bounds.width - 120)
                    .trvPrtmaryButton()
                
            }
            
            Spacer()
            
            Footer()
            
        }
        
    }
}
