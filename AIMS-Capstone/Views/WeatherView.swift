//
//  WeatherView.swift
//  AIMS-Capstone
//
//  Created by Erinlea McGowan-Moniz on 4/30/23.
//
//super helpful resources: codewithchris.com, bigmountainstudio.com

import SwiftUI
import CoreData

struct WeatherView: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFahrenheit = false; @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>
    
    var body: some View {
        NavigationView {
            ZStack {
                //Background color
                
                Color("col-grey-dark")
                    .ignoresSafeArea()
                //     Image("header-orange")
                VStack(alignment: .leading) {
                    Image("header-orange")
                        .padding(.bottom, 25.0)
                    
                    NavigationLink(destination: CalendarView()) {
                        Text(Date(), style: .date)
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("col-grey-light"))
                            .padding(.horizontal, 25)
                    }
                    
                    
                    
                    
                    
                    HStack {
                        //Navigation to LocationPicker to switch locations
                        NavigationLink(destination: LocationPickerView()) {
                            Image(systemName: "location")
                                .foregroundColor(Color("AccentColor"))
                            Text("\(modelData.locations[modelData.selectedLocation].name)")
                                .foregroundColor(Color("col-grey-light"))
                                .padding(.bottom)
                        }
                        
                        //Toggle to switch between Celcius and Fahrenheit units
                        Toggle(isOn: $showFahrenheit) {}
                        if showFahrenheit {
                            Text("F")
                                .foregroundColor(Color("col-grey-light"))
                            
                        }
                        
                        else {
                            Text("C")
                                .foregroundColor(Color("col-grey-light"))
                        }
                        
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 50.0)
                    
                    //Change toggle's background color
                    .toggleStyle(SwitchToggleStyle(tint:(Color("AccentColor"))))
                    
                    //Current weather information
                    Text("Current conditions")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("col-grey-light"))
                        .padding([.top, .leading, .trailing])
                    CurrentWeatherSubview(showFahrenheit: showFahrenheit)
                        .padding(.bottom, 50.0)
                    //   Spacer()
                    
                    Text("Hourly Forecast")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("col-grey-light"))
                        .padding(.horizontal)
                    //  .padding(.top, 100.0)
                    
                    //Hourly forecast information for the next 12 hours
                    HourlyWeatherSubview(showFahrenheit: showFahrenheit)
                        .padding(5.0)
                      Spacer()
                    
                    
                    //             //navigation menu-ADD LINKS/DESTINATIONS
                                    TabView()
                    //                        .padding(5.0)
                    Spacer()
                }
               // .padding(25.0)
               // .scrollContentBackground(.hidden)
                
            }
            
        }
    }
    
    private func addItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()
            
            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
    
    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { items[$0] }.forEach(viewContext.delete)
            
            do {
                try viewContext.save()
            } catch {
                
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
            .environmentObject(ModelData())
        
    }
}
