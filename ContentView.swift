//
//  ContentView.swift
//  IceBreaker
//
//  Created by Sarah Svitlik on 2/7/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var txtFirstName: String = ""
    @State var txtLastName: String = ""
    @State var txtPrefName: String = ""
    @State var txtAnswer: String = ""
    @State var txtQuestion: String = ""

    @State var questions = [Questions] ()
    
    var body: some View {
        VStack {
            Text("Icebreaker")
                .font(.system(size: 40))
                .bold()
                .underline()
            Text ("Built with SwiftUI")
            
            TextField("First Name", text: $txtFirstName)
            TextField("Last Name", text: $txtLastName)
            TextField("Preferred Name", text: $txtPrefName)

            Button(action: { setRandomQuestion()
                        }){
                            Text("Get a new random question")
                                .font(.system(size: 28))
                        }
                        Text(txtQuestion)
                        
                        TextField("Answer", text: $txtAnswer)
        }
        .padding()
    }
}

func setRandomQuestion(){
    print ("Set random question pressed.")
    var newQuestion = questions.randomElement()?.text
    if (newQuestion != nil){
        self.txtQuestion = newQuestion!
    }
}

#Preview {
    ContentView()
}
