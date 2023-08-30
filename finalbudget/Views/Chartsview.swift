//
//  Chartsview.swift
//  finalbudget
//
//  Created by Sonjhalyns Augustin on 4/28/23.
//

import SwiftUI

struct Chartsview: View {
    var body: some View {
        NewExpense()
    }
}

struct Chartsview_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            Chartsview()
            Chartsview()
                .preferredColorScheme(.dark)
        }
    }
}

