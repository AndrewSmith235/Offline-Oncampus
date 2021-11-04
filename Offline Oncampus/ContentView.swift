//
//  ContentView.swift
//  Offline Oncampus
//
//  Created by Andrew Smith on 10/19/21.
//

import SwiftUI



struct ContentView: View {
    
    @State var day: String = "Blank"
    
    var body: some View {
        NavigationView{
    
            ZStack {
                Image("Logo OO")
                .offset(x: 0, y: -100)
                .scaledToFit()
                
            HStack{
                Button("Sun", action:{
                    self.day = "Sun"
                    print(day)
                }) .font(.title)
                    .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                Button("Mon", action:{ var _: String = "Mon"}) .font(.title)
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
            }.frame(width: 500, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("AccentColor")/*@END_MENU_TOKEN@*/).offset(x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: -370.0)
            HStack{
                NavigationLink(
                    destination: SwiftUIView1(),
                    label: {
                        Text("Sun").font(.title)
                            .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    })
            }
            HStack{
                Button("Asignments", action:{ print("to do")}) .font(.title)
                    .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                Button("Schedule", action:{ print("to do")}) .font(.title)
                    .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                Button("Menus", action:{ print("to do")}) .font(.title)
                    .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                
            }.offset(x: 0, y: 250)
            Button("Download", action:{ print("to do")}) .font(.title)
                .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                .offset(x: 0, y: 50)
            }.frame(width: .infinity, height: 800).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
            
        
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 8")
    }
}
