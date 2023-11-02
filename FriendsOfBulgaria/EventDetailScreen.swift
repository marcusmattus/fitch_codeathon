//
//  EventDetailScreen.swift
//  FriendsOfBulgaria
//
//  Created by Anish Kochhar on 02/11/2023.
//

import SwiftUI

/*
 Responsible for:
 - Buying of tickets
 
 */

struct EventDetailScreen: View {
    
    var event: Event
    
    var body: some View {
        ScrollView {
            VStack {
                ZStack {
                    Image("bulgaria")
                        .resizable()
                        .blur(radius: 5)
                    Image("bulgaria")
                }
                .frame(height: UIScreen.screenHeight / 2)
                Text(event.name)
                    .bold()
                    .font(.title2)
                    .multilineTextAlignment(.center)
                
            }
        }
    }
}

struct EventDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailScreen(event: Event(id: 1, name: "Toddlers Talent Express Show Event", price: "120", timeStart: "03:00 PM", timeEnd: "09:00 PM", location: "The Embassy", date: (09, "NOV")))
    }
}
