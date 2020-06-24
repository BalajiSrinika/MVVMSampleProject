//
//  Model.swift
//  MVVMSampleProject
//
//  Created by Balaji Pandian on 23/06/20.
//  Copyright © 2020 Balaji Pandian. All rights reserved.
//

import Foundation


// MARK: - CountryElement
struct CountryElement: Codable {
    let name: String
    let topLevelDomain: [String]
    let alpha2Code, alpha3Code: String
    let callingCodes: [String]
    let capital: String
    let altSpellings: [String]
    let region, subregion: String
    let population: Int
    let latlng: [Int]
    let demonym: String
    let area: Int?
    let gini: Double?
    let timezones, borders: [String]
    let nativeName, numericCode: String
    let flag: String
    let cioc: String
}




