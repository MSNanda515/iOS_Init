//
//  Person.swift
//  ChallengeLabs
//
//  Created by Meharpreet Singh Nanda on 2021-08-20.
//

import Foundation

class Person: Identifiable, ObservableObject {
    var id = UUID()
    var name:String
    var address: String
    var company:String
    var yearsOfExperience:Int
    var nameActive = true
    var addressActive = true
    var companyActive = true
    var expActive = true
    
    init (name:String, address:String, company:String, exp:Int) {
        self.name = name
        self.address = address
        self.company = company
        self.yearsOfExperience = exp
    }
}

