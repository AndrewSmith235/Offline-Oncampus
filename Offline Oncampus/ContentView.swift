//
//  ContentView.swift
//  Offline Oncampus
//
//  Created by Andrew Smith on 10/19/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("Loading screen OO")
                .offset(x: -17, y: -50)
            HStack{
                Button("Sun", action:{ print("to do")}) .font(.title)
                    .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                Button("Mon", action:{ print("to do")}) .font(.title)
                    .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                Button("Tue", action:{ print("to do")}) .font(.title)
                    .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                Button("Wed", action:{ print("to do")}) .font(.title)
                    .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                Button("Thu", action:{ print("to do")}) .font(.title)
                    .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                Button("Fri", action:{ print("to do")}) .font(.title)
                    .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                Button("Sat", action:{ print("to do")}) .font(.title)
                    .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
    
            }.offset(x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/-300.0/*@END_MENU_TOKEN@*/)
            HStack{
                Button("Asignments", action:{ print("to do")}) .font(.title)
                    .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                Button("Schedule", action:{ print("to do")}) .font(.title)
                    .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                Button("Menus", action:{ print("to do")}) .font(.title)
                    .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                
            }.offset(x: 0, y: 300)
            Button("Download", action:{ print("to do")}) .font(.title)
                .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                .offset(x: 0, y: 50)
        }
        
        
        
      
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 8")
    }
}
