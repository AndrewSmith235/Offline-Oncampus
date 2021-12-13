//
//  ContentView.swift
//  Offline Oncampus
//
//  Created by Andrew Smith on 10/19/21.
//

import SwiftUI
import Foundation






struct ContentView: View {
    
    class ViewController : UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
        
            let url = "https://api.sunrise-sunset.org/json"
            getdata(from: url)
        }

        func getdata(from url: String) {
            let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
            guard let data = data,  error == nil else {
                print("error")
                return
            }
                
                var result: Response?
                do{
                    result = try JSONDecoder().decode(Response.self, from: data)
                }
                catch{
                    print("failed to convert \(error.localizedDescription)")
                }
                guard let json = result else {
                    return
                }
                print(json.status)
                print(json.results.sunrise)
                print("test")
            })
            task.resume()
        }
        
    }
    struct Response: Codable {
        let results: MyResult
        let status: String
    }

    struct MyResult: Codable {
        let sunrise: String
    }
    
    
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
                 }.frame(width: 500, height: 50, alignment: .center/*@END_MENU_TOKEN@*/).background(Color("AccentColor")).offset(x: /*@START_MENU_TOKEN@*/0.0, y: -370.0)
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
                    VStack{
                       Text("Computer Science 8:45")
                        //Text("varScheduleItem1"+" varScheduleTime1")
                    }//modifiers to make look nice
                        .tabItem {
                            Text("MON")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                        }
                    Text("Tue")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .tabItem {
                            Text("TUE")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                        }
                    Text("Wed")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .tabItem {
                            Text("WED")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                        }
                    Text("Thu")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .tabItem {
                            Text("THU")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                        }
                    Text("Fri")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .tabItem {
                            Text("FRI")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                        }
                }
                HStack{
                    HStack{
                        Spacer()
                        Text("M")
                        Spacer()
                        Spacer()
                        Text("T")
                        Spacer()
                        Spacer()
                        
                    }
                    .font(.largeTitle)
                    .offset( y: 250)
                    HStack{
                        Text("W")
                    }.font(.largeTitle)
                    .offset(x: 0, y: 250)
                    HStack{
                        Spacer()
                        Spacer()
                        Text("T").offset(x: -5)
                        Spacer()
                        Spacer()
                        Text("F")
                        Spacer()
                    }
                    .font(.largeTitle)
                    .offset(x: 0, y: 250)
                }
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

