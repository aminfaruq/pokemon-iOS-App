//
//  PokemonPresenter.swift
//  PokemonModule
//
//  Created by Amin faruq on 02/11/22.
//

import Foundation

public final class PokemonPresenter {
    public static func map(_ results: [PokemonItem]) -> PokemonItemsViewModel {
        
        return PokemonItemsViewModel(results: results.map { categories in
            PokemonItemViewModel(name: categories.name, url: categories.url)
        })
    }
}
