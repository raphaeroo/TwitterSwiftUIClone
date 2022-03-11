//
//  PhotoSelectorView.swift
//  TwitterSwiftUi
//
//  Created by Raphael Freitas da Silva on 10/03/22.
//

import SwiftUI

struct PhotoSelectorView: View {
    var body: some View {
        VStack {
            AuthenticationHeaderView(
                title1: "Create your account.",
                title2: "Add a profile photo."
            )
            
            Button {
                print("Pick image here...")
            } label: {
                Image(systemName: "plus")
                    .font(.system(size: 120))
                    .foregroundColor(Color(.systemBlue))
                    .frame(width: 180, height: 180)
                    .overlay(Circle().stroke(Color.blue, lineWidth: 1))
                    .padding(.top, 50)
            }

            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct PhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoSelectorView()
    }
}
