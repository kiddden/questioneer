//
//  ContentView.swift
//  questioneer
//
//  Created by Eugene Ned on 27.12.2021.
//

import SwiftUI

struct ContentView: View {
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    
    var body: some View {
        ZStack{
            mainColor.ignoresSafeArea()
            VStack{
                Text("1/10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text("Question 1?")
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()
                HStack{
                    Button(action: {
                        print("Tapped the 1 button")
                    }, label: {
                        Text("Button")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(accentColor, width: 4)
                    })
                    Button(action: {
                        print("Tapped the 2 button")
                    }, label: {
                        Text("Button")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(accentColor, width: 4)
                    })
                    Button(action: {
                        print("Tapped the 3 button")
                    }, label: {
                        Text("Button")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(accentColor, width: 4)
                    })
                    Button(action: {
                        print("Tapped the 4 button")
                    }, label: {
                        Text("Button")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(accentColor, width: 4)
                    })
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

