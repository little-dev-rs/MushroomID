//
//  IdentityView.swift
//  MushroomID
//
//  Created by MushroomTeam on 22/11/23.
//

import SwiftUI

struct IdentityView: View {
    
    @State var isPresenting: Bool = false
    @State var uiImage: UIImage?
    @State var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @State private var isBottomSheetPresented = false
    
    @ObservedObject var classifier: ImageClassifier
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Image(systemName: "photo")
                    .accessibility(label: Text("photo libraty button"))
                    .accessibility(hint: Text("tap to choose a photo from library"))
                    .padding(.horizontal, 10)
                    .onTapGesture {
                        isPresenting = true
                        sourceType = .photoLibrary
                    }
                  
                Image(systemName: "camera")
                    .accessibility(label: Text("camera button"))
                    .accessibility(hint: Text("tap to make a photo"))
                    .padding(.horizontal, 10)
                    .onTapGesture {
                        isPresenting = true
                        sourceType = .camera
                    }
                
            }
            .padding()
            .font(.title)
            .foregroundColor(Color("DarkPurple"))
            
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color("LightGray"))
                .overlay(
                    Group {
                        if uiImage != nil {
                            Image(uiImage: uiImage!)
                                .resizable()
                                .scaledToFit()
                        } else {
                            Text("Please take a photo \nor choose an existing one to identify")
                                .multilineTextAlignment(.center)
                                .font(.headline)
                                .bold()
                                .foregroundColor(Color("TextGray"))
                        }
                    }
                )
            Group {
                if let imageClass = classifier.imageClass {
                    HStack{
                        Text("Result:")
                            .font(.caption)
                        Text(imageClass)
                            .bold()
                    }
                }
            }
            .font(.subheadline)
            .padding()
            
        }
        .sheet(isPresented: $isPresenting){
            ImagePicker(uiImage: $uiImage, isPresenting:  $isPresenting, sourceType: $sourceType)
                .onDisappear{
                    if uiImage != nil {
                        classifier.detect(uiImage: uiImage!)
                    }
                }
            
        }
        .padding()
    }
    
}

struct IdentityView_Previews: PreviewProvider {
    static var previews: some View {
        IdentityView(classifier: ImageClassifier())
    }
}
