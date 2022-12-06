//
//  ContentView.swift
//  navigationtesting
//
//  Created by Jake Watembach on 12/4/22.
//

import SwiftUI

struct ContentView: View {
    @State var pageNumber: Int = 1
    @State var maxPages: Int = 5
    var body: some View {
        VStack{
            if(pageNumber < 1){
                Text("Cover")
            }
            if(pageNumber == 1){
                Text("First page")
            }
            if(pageNumber == 2){
                Text("Page two")
            }
            if(pageNumber == 3){
                Text("Page three")
            }
            if(pageNumber == 4){
                Text("Page four")
            }
            if(pageNumber == 5){
                Text("Final page")
            }
            //next page and back page
            HStack{
                //Previous page button
                if(pageNumber > 0){
                    Button(action: {
                        pageNumber -= 1
                        print("previous clicked")
                    }){
                        Text("Previous page")
                    }
                }
                
                //Next page button
                if(pageNumber < maxPages){
                    Button(action: {
                        pageNumber += 1
                        print("next clicked")
                    }){
                        Text("Next page")
                    }
                }
                
            }//hstack
        }
    
    
}
               }
               
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
