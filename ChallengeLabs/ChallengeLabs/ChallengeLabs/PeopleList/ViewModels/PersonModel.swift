//
//  PersonModel.swift
//  ChallengeLabs
//
//  Created by Meharpreet Singh Nanda on 2021-08-20.
//

import Foundation

class PersonModel: ObservableObject {
    @Published var people: [Person]
    init() {
        people = buildPeopleData()
    }
}
