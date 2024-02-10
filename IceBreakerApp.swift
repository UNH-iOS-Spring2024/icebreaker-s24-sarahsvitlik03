//
//  IceBreakerApp.swift
//  IceBreaker
//
//  Created by Sarah Svitlik on 2/7/24.
//

import SwiftUI
import Firebase

@main
struct Icebreaker_Pellicano_S24App: App {
    init(){
        let providerFactory = AppCheckDebugProviderFactory()
        AppCheck.setAppCheckProviderFactory(providerFactory)
        
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
