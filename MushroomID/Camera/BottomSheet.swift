//
//  BottomSheet.swift
//  MushroomID
//
//  Created by Svetlana Shardakova on 22/11/23.
//

import SwiftUI

struct BottomSheetView: View {
    @Binding var isSheetPresented: Bool
    
    var body: some View {
        VStack {
            Text("This is the Bottom Sheet")
                .font(.headline)
                .padding()
            
            // Add your bottom sheet content here
            
            Spacer()
            
            Button("Close") {
                isSheetPresented.toggle()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

//struct BottomSheet_Previews: PreviewProvider {
//    static var previews: some View {
//        BottomSheetView()
//    }
//}
