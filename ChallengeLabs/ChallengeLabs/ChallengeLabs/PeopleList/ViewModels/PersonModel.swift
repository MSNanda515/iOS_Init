//
//  PersonModel.swift
//  ChallengeLabs
//
//  Created by Meharpreet Singh Nanda on 2021-08-20.
//

import Foundation

class PersonModel: ObservableObject {
    @Published var people: [Person]
    @Published var nameActive = true
    @Published var addressActive = true
    @Published var companyActive = true
    @Published var expActive = true
    init() {
        people = buildPeopleData()
    }
}
