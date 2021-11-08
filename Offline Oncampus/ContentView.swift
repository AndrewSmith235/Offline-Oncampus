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
                
                /*HStack{
                 Button("Sun", action:{
                 self.day = "Sun"
                 print(day)
                 }) .font(.title)
                 .accentColor(.white)
                 Button("Mon", action:{ var _: String = "Mon"}) .font(.title)
                 .accentColor(.white)
                 Button("Tue", action:{ print("to do")}) .font(.title)
                 .accentColor(.white)
                 Button("Wed", action:{ print("to do")}) .font(.title)
                 .accentColor(.white)
                 Button("Thu", action:{ print("to do")}) .font(.title)
                 .accentColor(.white)
                 Button("Fri", action:{ print("to do")}) .font(.title)
                 .accentColor(.white)
                 Button("Sat", action:{ print("to do")}) .font(.title)
                 .accentColor(.white)
                 }.frame(width: 500, height: 50, alignment: .center/*@END_MENU_TOKEN@*/).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("AccentColor")/*@END_MENU_TOKEN@*/).offset(x: /*@START_MENU_TOKEN@*/0.0, y: -370.0)
                 HStack{
                 NavigationLink(
                 destination: SwiftUIView1(),
                 label: {
                 Text("Sun").font(.title)
                 .accentColor(.white)
                 })
                 }
                 HStack{
                 Button("Asignments", action:{ print("to do")}) .font(.title)
                 .accentColor(.white)
                 Button("Schedule", action:{ print("to do")}) .font(.title)
                 .accentColor(.white)
                 Button("Menus", action:{ print("to do")}) .font(.title)
                 .accentColor(.white)
                 
                 }.offset(x: 0, y: 250)
                 Button("Download", action:{ print("to do")}) .font(.title)
                 .accentColor(.white)
                 .offset(x: 0, y: 50)*/
              
                TabView {
                    Text("Sun")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .tabItem {
                            Text("SUN")
                                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                                .fontWeight(.bold)
                        }
                }
                HStack{
                    Text("S")
                    Text("M")
                    Text("T")
                    Text("W")
                    Text("T")
                    Text("F")
                    Text("S")
                }
                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                }
            }
            
            
        }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 8")
    }
}
