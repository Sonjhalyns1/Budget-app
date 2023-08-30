//
//  Articleview.swift
//  finalbudget
//
//  Created by Sonjhalyns Augustin on 4/28/23.
//

import SwiftUI

struct Articleview: View {
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(alignment: .leading, spacing: 24.0){
                    Text("Investing Strategy Articles")
                        .font(.title2)
                        .fontWeight(.bold)
                        .bold()
                    HStack{
                        
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                VStack {
                    
                    HStack {
                        Text("Value investing")
                            .font(.body)
                            .fontWeight(.bold)
                            .bold()
                            .padding()
                        Spacer()
                        
                        HStack {
                                            Link(
                                                "View website",
                                                destination: URL(string: "https://www.investopedia.com/terms/v/valueinvesting.asp")!
                                            )
                                                .buttonStyle(.borderless)
                                           
                                        }
    
                    }
                    VStack{
                        Text("This strategy involves buying stocks that are undervalued by the market and holding them until their true value is realized. Here is a link that explains value investing")
                            .padding(.horizontal, 25.0)
                        Divider()
                    }
                    .padding(.trailing)
                    HStack {
                        Text("Rule of 72")
                            .font(.body)
                            .fontWeight(.bold)
                            .bold()
                            .padding()
                        Spacer()
                        
                        HStack {
                                            Link(
                                                "View website",
                                                destination: URL(string: "https://www.investopedia.com/terms/r/ruleof72.asp")!
                                            )
                                                .buttonStyle(.borderless)
                                           
                                        }
        
                    }
                    VStack{
                        Text("The rule of 72 is a simple formula that can help you estimate how long it will take for your investments to double in value. Here is a link that explains the rule of 72")
                            .padding(.horizontal, 25.0)
                        Divider()
                    }
                    .padding(.trailing)
                    HStack {
                        Text("The 50/30/20 Rule")
                            .font(.body)
                            .fontWeight(.bold)
                            .bold()
                            .padding()
                        Spacer()
                        
                        HStack {
                                            Link(
                                                "View website",
                                                destination: URL(string: "https://www.investopedia.com/ask/answers/022916/what-502030-budget-rule.asp")!
                                            )
                                                .buttonStyle(.borderless)
                                           
                                        }
  
                    }
                    VStack{
                        Text("This rule suggests that you allocate 50% of your income to needs, 30% to wants, and 20% to savings and debt repayment.")
                            .padding(.horizontal, 25.0)
                        
                    }
                    .padding(.trailing)
                    
                }
                .padding()
                .background(Color.systemBackground)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 0)
                
                
            }
            .background(Color.background)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                // nofitication
        
            }
            
        }
        .navigationViewStyle(.stack)
        .accentColor(.primary)    }
}

struct Articleview_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            Articleview()
            Articleview()
                .preferredColorScheme(.dark)
        }
        
    }
}
