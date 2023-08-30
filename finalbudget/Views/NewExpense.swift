//
//  NewExpense.swift
//  finalbudget
//
//  Created by Sonjhalyns Augustin on 4/28/23.
//
import SwiftUI


struct NewExpense: View {
    @State private var name = ""
    
    @StateObject var expenses = Expenses()
    
    @State private var showingAddExpense = false
    var body: some View {
        
        
        NavigationView {
            
            List {
                            
                Section(header: Text("Current Monthly List")) {
                    ForEach(expenses.items) { item in
                        
                        HStack{
                            VStack(alignment: .leading){
                                Text(item.name).font(.headline)
                                Text(item.type)
                                
                            }
                            
                            Spacer()
                            Text(item.amount, format: .currency(code: "USD"))
                        }
                        

                    }
                    
                    .onDelete(perform: removeItems)
                }
            }.listStyle(.sidebar)
            .navigationTitle("Budget List")
            .toolbar {
                    Button {
                        showingAddExpense = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            .sheet(isPresented: $showingAddExpense){
                AddView(expenses: expenses)
            }
            
        }
        
        
    }
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}

struct NewExpense_Previews: PreviewProvider {
    static var previews: some View {
        NewExpense()
    }
}
