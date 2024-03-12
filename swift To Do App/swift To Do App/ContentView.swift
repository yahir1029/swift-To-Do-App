//
//  ContentView.swift
//  swift To Do App
//
//  Created by StudentAM on 3/12/24.
//

import SwiftUI

struct ContentView: View{
    @State var data :[String] = []
    @State var userInput : String = ""
    @State var count : Int = 0
    
    var body: some View{
 
// Comments:
   
        
       
        
        
        
       
        NavigationView{
            VStack{
                HStack{
                    
                    
                    
                    Text("Number of tasks: \(count)")
                        .padding()
                    
                    Spacer()
                }
                
                
                
                
                TextField(" Enter Type here... ", text:$userInput)
                    .padding()
//          Spacer()
                HStack{
                    
                    
                    
                    
                    Button(" Add Task", action:{
                        if !userInput.isEmpty{
                            data.append(userInput)
                            count += 1
                        }
                        
                    })
                    .padding()
                    .background(userInput.count > 0 ? Color.blue : Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
                    
                    
                    Button("Remove All Tasks",action:{
                        data = []
                        count = 0
                    })
                        
                        
                    .padding()
                    .background(data.count == 0 ? Color.gray : Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(5)
                    
                  
                    
                   
                    
                  
                                             
                }
                Spacer()
                    
                
                
                
               
                    
                    List{
                        ForEach(data, id:\.self){ task in
                            Text("\(task)")
                        }
                        .onDelete(perform: removeTask)
                    }
                    .navigationTitle("To Do  List")
                
                
                
                
                
            }
            .navigationTitle("To Do List")
        }
    }
    
    func removeTask(index: IndexSet){
        data.remove(atOffsets: index)
        count -= 1
        
    }
}
          
     

 

            
 
                               
#Preview{
    ContentView()
}
 
