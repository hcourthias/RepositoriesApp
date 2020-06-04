//
//  ContentView.swift
//  Hiking
//
//  Created by Hugo Courthias on 04/06/2020.
//  Copyright © 2020 Hugo Courthias. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let repositories = Repository.all()
    
    var body: some View {
        
        NavigationView {
            List(self.repositories, id: \.name) { repo in
                NavigationLink(destination: RepositoryDetail(repo: repo)) {
                RepositoriesCell(repo: repo)
                }
            }
        .navigationBarTitle("Repositories")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RepositoriesCell: View {
    let repo: Repository
    var body: some View {
        HStack {

            Image(repo.imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 92, height: 92)
                .cornerRadius(8)
            Text(repo.name)

        }
    }
}
