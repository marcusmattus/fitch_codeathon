//
//  EventItem.swift
//  FOB_test
//
//  Created by Anish Kochhar on 02/11/2023.
//

import SwiftUI

struct EventItem: View {
    
    var event: Event
    
    var body: some View {
        HStack {
            VStack {
                Text(String(format: "%02d", event.date.0))
                    .bold()
                Text(event.date.1)
            }
            .foregroundStyle(.primary)
            Rectangle().fill(Color.gray).opacity(0.4).frame(width: 1, height: 100, alignment: .center)//.offset(y: -10)

            
            VStack(alignment: .leading) {
                Text(event.name)
                    .font(.title3)
                    .bold()
                    .frame(alignment: .leading)
                    .foregroundStyle(.primary)
                Label(event.location, systemImage: "location")
                    .foregroundColor(.gray)
                    .frame(height: 30)
                Label {
                    Text("\(event.timeStart) - \(event.timeEnd)")
                } icon: {
                    Image(systemName: "clock")
                }
                .frame(height: 30)
                .foregroundColor(.gray)
                Text("£\(String(format: "%.2f", Double(event.price)!))")
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.orange).opacity(0.2)
                        .shadow(radius: 3)
                        .frame(width: 84, height: 44)
                        
                    )
                    .padding()
                    
            }
            Image("bulgaria")
                .resizable()
                .frame(width: 80, height: 80)
                .cornerRadius(5)
            
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.gray, lineWidth: 1).opacity(0.2))
    }
}

struct EventItem_Previews: PreviewProvider {
    static var previews: some View {
        EventItem(event: Event(id: 1, name: "Toddlers Talent Express Show Event", price: "120", timeStart: "03:00 PM", timeEnd: "09:00 PM", location: "The Embassy", date: (09, "NOV")))
    }
}
