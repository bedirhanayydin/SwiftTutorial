//
//  DynamicList.swift
//  first
//
//  Created by bedirhan on 11.08.2023.
//

import SwiftUI
struct Pokemon: Identifiable {
    let id: Int
    let name,
        type: String
    let color: Color
}
struct DynamicList: View {
    @State var pokemonList = [
        Pokemon(id: 0, name: "Charmander", type: "Fire", color: .red),
        Pokemon(id: 1, name: "Squirtle", type: "Water", color: .blue),
        Pokemon(id: 2, name: "Bulbasaur", type: "Grass", color: .green),
        Pokemon(id: 3, name: "Pikachu", type: "Electric", color: .yellow),
    ]
    var body: some View {
        ZStack(alignment:.bottomTrailing) {
            NavigationView {
                List(pokemonList) { pokemon in
                    HStack {
                        Text(pokemon.name)
                        Text(pokemon.type).foregroundColor(pokemon.color)
                    }
                }
                .navigationBarTitle(Text("Pokemon"))
                .navigationBarItems(
                    trailing: Button(action: addPokemon, label: { Text("Add") })
                )
                
            }
            Image(systemName: "plus.circle.fill")
                .font(.system(size: 65))
                .foregroundColor(.purple)
                .shadow(color: .gray, radius: 0.2, x: 1, y: 1)
                .padding()
                .onTapGesture {
                    addPokemon()
                }
            //            ZStack {
            //                Button(action: {
            //                    addPokemon()
            //
            //                }) {
            //                        Image(systemName: "plus.circle.fill")
            //                            .font(.system(size: 65))
            //                            .foregroundColor(.purple)
            //                            .shadow(color: .gray, radius: 0.2, x: 1, y: 1)
            //                            .padding()
            //
            //                    }
            //            }
        }
    }
    func addPokemon() {
        if let randomPokemon = pokemonList.randomElement() {
            pokemonList.append(randomPokemon)
        }
    }
}

struct DynamicList_Previews: PreviewProvider {
    static var previews: some View {
        DynamicList()
    }
}
