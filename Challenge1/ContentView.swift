//
//  ContentView.swift
//  Challenge1
//
//  Created by Nguyễn Đức Hậu on 27/11/2024.
//

import SwiftUI

struct ContentView: View {
    @State var isShowAlert: Bool = false
    @State var message: String = ""
    @State var number: Int = 0
    var body: some View {
        VStack {
            HStack {
                Text("Count")
                
                Spacer()
                
                HStack {
                    Button(action: {
                        if number > 0 {
                               number -= 1
                           }
                           
                           if number == 0 {
                               isShowAlert = true
                               message = "Minimum value reached"
                           }
                    }) {
                        Image(systemName: "minus")
                        .foregroundColor(.black)
                    }
                    
                    Divider()
                    
                    Button(action: {
                        number += 1
                    }) {
                        Image(systemName: "plus")
                        .foregroundColor(.black)
                    }
                }
                .frame(width: 90, height: 30.0)
                .background(Color(.lightGray))
                .cornerRadius(5)
                .padding(.bottom)

            }
                ZStack {
                    Text("Hello, World!")
                        .frame(width: 150.0, height: 60.0)
                        .background(Color.gray)
                        .cornerRadius(10.0)
                    
                    if number > 0 {
                        VStack {
                            HStack {
                                Spacer()
                                Text("\(number)")
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .padding(6)
                                    .background(Color.red)
                                    .clipShape(Circle())
                                    .offset(x: 10, y: -10)
                            }
                            Spacer()
                        }
                    }
           
                }
                .frame(width: 150.0, height: 60.0)
        }
        .padding()
        .alert(isPresented: $isShowAlert, content: {
            Alert(
                          title: Text("Error"),
                          message: Text(message),
                          dismissButton: .default(Text("OK"))
                      )
        })
    }
}

#Preview {
    ContentView()
}
