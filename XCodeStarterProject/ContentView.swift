//
//  ContentView.swift
//  XCodeStarterProject
//
//  Created by Suresh Chaudhari on 7/5/20.
//  Copyright © 2020 codebrust. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isActive: Bool = false
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination:SwiftUIView(),
                               isActive: self.$isActive){
                                Button("Go to Detail View"){
                                    if(self.isActive){
                                        self.isActive = false
                                    }else{
                                        self.isActive = true
                                    }
                                    print(self.isActive)
                                }
                }
            }
        }
    .navigationBarTitle("Main")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
