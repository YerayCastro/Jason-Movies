//
//  Home.swift
//  JsonMovies
//
//  Created by Yery Castro on 7/3/23.
//

import SwiftUI

struct Home: View {
    
    @State private var search = ""
    @State private var buscar = false
    
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.green,.blue]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                 TextField("Search", text: $search)
                        .textFieldStyle(.roundedBorder)
                        .padding(.top,15)
                        .padding(.bottom,20)
                        .onAppear{
                            search = ""
                        }
                    Button {
                        buscar.toggle()
                    } label: {
                        Text("Search")
                            .font(.title2)
                            .bold()
                    }
                    .buttonStyle(.bordered)
                    .tint(.white)
                    Spacer()
                    
                    .navigationDestination(isPresented: $buscar) {
                        MoviesView(movie: search)
                    }

                }.padding(.all)
                    .navigationTitle("App Movie Search")
            }
        }
    }
}


