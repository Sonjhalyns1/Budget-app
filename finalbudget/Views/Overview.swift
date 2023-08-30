//
//  Overview.swift
//  finalbudget
//
//  Created by Sonjhalyns Augustin on 4/28/23.
//
import SwiftUI
import SwiftUICharts



struct Overview: View {
    
    @StateObject var expenses = Expenses()
    
    @State private var showingAddExpense = false
    var daysLeftInMonth: Int {
            let calendar = Calendar.current
            let date = Date()
            let range = calendar.range(of: .day, in: .month, for: date)!
            let daysInMonth = range.count
            let components = calendar.dateComponents([.day], from: date)
            let currentDay = components.day!
            return daysInMonth - currentDay
        }

    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(alignment: .leading, spacing: 24.0){
                    VStack{
                        Text("Account").font(.title)
                            .fontWeight(.bold)
                            .bold()
                        Text("Overview")
                            .font(.title)
                            .fontWeight(.bold)
                            .bold()
                            .padding(.bottom, 30.0)
                        HStack{
                            VStack {
                                HStack {
                                    Text("Monthly Income: ").font(.title3)
                                        .bold()
                                        .padding(.leading)
                                    Spacer()
                                    Text("$\(expenses.monthlyAmount, specifier: "%.2f")").bold()
                                }
                                GroupBox(label:
                                            Label("Enter-Monthly-income", systemImage: "building.columns")
                                ) {
                                    ScrollView(.vertical, showsIndicators: true) {
                                        Text("Enter monthly amount:")
                                            .font(.footnote)
                                    }
                                    .frame(height: 1)
                                    TextField("Enter monthly amount", value: $expenses.monthlyAmount, format: .currency(code: "USD"))
                                        .textFieldStyle(.roundedBorder)
                                    .padding(.trailing)}
                                
                                
                                
                            }
                            
                            
                        }
                        HStack{
                            Text("Monthly Expenses: ").padding(.leading).font(.title3).bold()
                            Spacer()
                            Text(expenses.totalAmount, format: .currency(code: "USD")).bold()
                                
                        }
                        
                        
                    }
                    
                    
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                HStack{
                    Image(systemName: "calendar.badge.clock").symbolRenderingMode(.palette)
                                                .foregroundStyle(.blue, .red)
                                                .font(.system(size: 100))

                    VStack {
                        Text("Days left in month:").padding(.top)
                                                .font(.headline)
                        Text("\(daysLeftInMonth)")
                            .padding(.top)
                            .font(.system(size: 60)).bold()
                    }
                    
                }
                 
                HStack {
                    Text("Budget Barplot").font(.system(size: 20)).bold()
                    Spacer()
                    BarChartView(data: ChartData(values: [("income",expenses.monthlyAmount), ("expenses",expenses.totalAmount)]), title: "Income vs expense", legend: "Monthly", cornerImage:Image(systemName: "chart.bar"))
                    
                    
                                                        }.frame(height: 100)
                
                .padding([.top, .leading, .trailing], 50.0)
            }
            
                .background(Color.background)
                .navigationBarTitleDisplayMode(.inline)
                
                
            
            }
            .navigationViewStyle(.stack)
            .accentColor(.primary)
        
    }
    
}

struct Overview_Previews: PreviewProvider {
    static var previews: some View {
        
        Group{
            Overview()
            Overview()
                .preferredColorScheme(.dark)
        }
    }
}
