//
//  PokemonViewModel.swift
//  PokemonModule
//
//  Created by Amin faruq on 02/11/22.
//

import Foundation

public struct PokemonItemsViewModel {
    public let results: [PokemonItemViewModel]
}

public struct PokemonItemViewModel {
    public let name: String?
    public let url: String?
    
    public init(name: String?, url: String?) {
        self.name = name
        self.url = url
    }
}
