//
//  ContentView.swift
//  finalbudget
//
//  Created by Sonjhalyns Augustin on 4/28/23.
//
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView{
            Overview()
                .tabItem() {
                    Image(systemName: "house.fill")
                    Text("Overview")
                }
            NewExpense()
                .tabItem() {
                    Image(systemName: "rectangle.stack.fill.badge.plus")
                    Text("Expenses")
                }
            Articleview()
                .tabItem() {
                    Image(systemName: "doc.plaintext")
                    Text("Articles")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
