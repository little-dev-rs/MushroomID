//
//  MushroomIDApp.swift
//  MushroomID
//
//  Created MushroomTeam on 20/11/23.
//

import SwiftUI

@main
struct MushroomIDApp: App {
    
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewRouter: viewRouter)
        }
    }
    
}
