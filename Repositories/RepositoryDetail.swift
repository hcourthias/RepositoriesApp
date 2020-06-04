//
//  RepositoryDetail.swift
//  Repositories
//
//  Created by Hugo Courthias on 05/06/2020.
//  Copyright © 2020 Hugo Courthias. All rights reserved.
//

import SwiftUI

struct RepositoryDetail: View {
    let repo: Repository
    @State private var zoomed: Bool = false
    var body: some View{
        VStack {
            Image(repo.imageUrl)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
            }
            Text(repo.name)
            Text(repo.desc ?? "")
                .font(.caption)
            Spacer()
        }.navigationBarTitle(Text(repo.name), displayMode: .inline)
    }
}

struct RepositoryDetail_Previews: PreviewProvider {
    static var previews: some View {
        RepositoryDetail(repo: Repository(name: "Epicture", imageUrl: "epicture", desc: "a photo finder and browsing application for imgur"))
    }
}
