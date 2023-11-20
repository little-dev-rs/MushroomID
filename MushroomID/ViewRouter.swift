//
//  ViewRouter.swift
//  MushroomID
//
//  Created by MushroomTeam on 20/11/23.
//

import SwiftUI

class ViewRouter: ObservableObject {
    
    @Published var currentPage: Page = .collection
    
}

enum Page {
    case collection
    case articles
}
