//
//  ContentView.swift
//  navigationtesting
//
//  Created by Jake Watembach on 12/4/22.
//



import SwiftUI




struct ContentView: View {
    @State var pageNumber: Int = 0
    var body: some View {
        VStack{
            Button(action: {
                pageNumber += 1
                print("next")
            }){
                Text("Next page")
            }
            Button(action: {
                pageNumber -= 1
                print("back")
            }){
                Text("Previous page")
            }
            if(pageNumber == 1){
                Text("Page one")
            }
            if(pageNumber == 2){
                Text("Page two")
            }
        }
    
    
}
               }
               
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
