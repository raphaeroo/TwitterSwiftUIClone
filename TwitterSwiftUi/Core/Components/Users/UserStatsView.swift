//
//  UserStatsView.swift
//  TwitterSwiftUi
//
//  Created by Raphael Freitas da Silva on 10/03/22.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 24) {
            HStack(spacing: 4) {
                Text("807")
                    .font(.subheadline).bold()
                
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }

            HStack(spacing: 4) {
                Text("6.9M")
                    .font(.subheadline).bold()
                
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
        .padding(.vertical)
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
