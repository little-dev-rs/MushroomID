//
//  CameraView.swift
//  MushroomID
//
//  Created by MushroomTeam on 21/11/23.
//

import SwiftUI

struct CameraView: UIViewControllerRepresentable {

    @Binding var isShowingCamera: Bool
    @Binding var capturedImage: UIImage?
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        var parent: CameraView
        
        init(parent: CameraView) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[.originalImage] as? UIImage {
                parent.capturedImage = image
            }
            
            parent.isShowingCamera = false
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent.isShowingCamera = false
        }
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
    
    func makeUIViewController(context: Context) -> UIViewController {
        let viewController = UIImagePickerController()
        viewController.delegate = context.coordinator
        viewController.sourceType = .camera
        return viewController
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        // Update any configuration if needed
    }

}
