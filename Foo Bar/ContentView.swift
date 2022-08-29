//
//  ContentView.swift
//  Foo Bar
//
//  Created by Alistair White on 8/25/22.
//

import SwiftUI

struct ContentView: View {
    @State private var num = 0
    @State private var display = "0"
    @State private var color = Color.black
    var body: some View {
        ZStack {
            color.ignoresSafeArea()
            Text("\(display)")
                .font(.system(size: 140))
                .preferredColorScheme(.dark)
                .padding()
        }
        .onTapGesture {
            num += 1
            display = ""
            if num % 3 == 0 {
                display += "FOO"
                color = .green
            }
            if num % 5 == 0 {
                display += "BAR"
                color = display != "BAR" ? .red : .yellow
            }
            if display == "" {
                display = "\(num)"
                color = .black
            }
        }
        .onLongPressGesture {
            num = 0
            display = "\(num)"
            color = .black
        }
    }
    func updateDisplay (){
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
