//
//  ContentView.swift
//  FriendsOfBulgaria
//
//  Created by Anish Kochhar on 02/11/2023.
//

import SwiftUI

struct ContentView: View {
    
    var events: [Event] = [
        Event(id: 1, name: "Toddlers Talent Express Show Event", price: "6", timeStart: "03:00 PM", timeEnd: "09:00 PM", location: "The Embassy", date: (09, "NOV")),
        Event(id: 2, name: "Christmas Party", price: "120", timeStart: "03:00 PM", timeEnd: "09:00 PM", location: "The Embassy", date: (01, "DEC")),
        Event(id: 3, name: "ZOV Education Outreach", price: "15", timeStart: "09:00 AM", timeEnd: "1:00 PM", location: "The Camp", date: (08, "DEC")),
        Event(id: 4, name: "I smell a birthday", price: "50", timeStart: "03:00 PM", timeEnd: "09:00 PM", location: "The Embassy", date: (20, "DEC")),
        Event(id: 5, name: "Christmas", price: "15", timeStart: "03:00 PM", timeEnd: "09:00 PM", location: "The Embassy", date: (25, "DEC"))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack (alignment: .leading) {
                    Text("All Events")
                        .font(.title)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    VStack(spacing: 20) {
                        ForEach(events) { event in
                            NavigationLink {
                                EventDetailScreen(event: event)
                            } label: {
                                EventItem(event: event)
                                    .foregroundStyle(.black)
                                //                            Text(event.name)
                            }
                        }
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
