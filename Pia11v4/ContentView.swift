//
//  ContentView.swift
//  Pia11v4
//
//  Created by Bill Martensson on 2022-10-06.
//

import SwiftUI

struct ContentView: View {
    
    @State var thenumber = 0
    
    @State var usernumber = ""
    
    @State var errortext = ""
    
    var body: some View {
        VStack {
            Text(String(thenumber))
                .font(.largeTitle)
            
            Text(errortext)
                .fontWeight(.bold)
                .foregroundColor(Color.red)
            
            TextField("Skriv siffra", text: $usernumber).keyboardType(.numbersAndPunctuation)
            
            Button(action: {
                calcstuff(howcalc: "plus")
            }, label: {
                Text("PLUS")
            }).padding()
            
            Button(action: {
                calcstuff(howcalc: "minus")
            }, label: {
                Text("MINUS")
            })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                calcstuff(howcalc: "multiplicera")
            }, label: {
                Text("MULTIPLICERA")
            })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                calcstuff(howcalc: "dividera")
            }, label: {
                Text("DIVIDERA")
            })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                thenumber = 0
            }, label: {
                Text("RESET")
            })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
    
    func calcstuff(howcalc : String) {
        
        errortext = ""
        
        let calcsiffran = Int(usernumber)
        
        if(calcsiffran != nil) {
            if(howcalc == "plus") {
                thenumber = thenumber + calcsiffran!
            }
            
            if(howcalc == "minus") {
                thenumber = thenumber - calcsiffran!
            }
            
            if(howcalc == "multiplicera") {
                thenumber = thenumber * calcsiffran!
            }
            
            if(howcalc == "dividera") {
                if(calcsiffran != 0) {
                    thenumber = thenumber / calcsiffran!
                } else {
                    errortext = "Division med noll!!"
                }
            }
            
            usernumber = ""
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
