//
//  PhotoSelectorView.swift
//  TwitterSwiftUi
//
//  Created by Raphael Freitas da Silva on 10/03/22.
//

import SwiftUI

struct PhotoSelectorView: View {
    @State private var showImagePicker = false
    @State private var selectedImage: UIImage?
    @State private var image: Image?

    @EnvironmentObject var viewModel: AuthenticationViewModel
    
    var body: some View {
        VStack {
            AuthenticationHeaderView(
                title1: "Setup account.",
                title2: "Add a profile photo."
            )
            
            Button {
                showImagePicker.toggle()
            } label: {
                if let image = image {
                    image
                        .resizable()
                        .modifier(ProfileImageModifier())
                        .clipShape(Circle())
                } else {
                    Image(systemName: "plus")
                        .modifier(ProfileImageModifier())
                        .overlay(Circle().stroke(Color.blue, lineWidth: 1))
                }
            }
            .sheet(isPresented: $showImagePicker, onDismiss: loadImage) {
                ImagePicker(selectedImage: $selectedImage)
            }
            .padding(.top, 50)
            
            if let selectedImage = selectedImage {
                Button {
                    viewModel.uploadProfileImage(selectedImage)
                } label: {
                    Text("Continue")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(Color(.systemBlue))
                        .clipShape(Capsule())
                        .padding()
                }
                .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
                .padding(.top, 50)
            }
            
            Spacer()
        }
        .ignoresSafeArea()
    }
    
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        image = Image(uiImage: selectedImage)
    }
}

private struct ProfileImageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 120))
            .foregroundColor(Color(.systemBlue))
            .frame(width: 180, height: 180)
    }
}

struct PhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoSelectorView()
    }
}
