//
//  Util.swift
//  ChallengeLabs
//
//  Created by Meharpreet Singh Nanda on 2021-08-20.
//

import Foundation

func buildPeopleData() -> [Person] {
    var people = [
            Person(
                name: "Inigo Montoya",
                address: "555 Youkilledmyfather Street",
                company: "CodeWithChris",
                exp: 35
            ),
            Person(
                name: "Edna Mode",
                address: "123 Nocape Lane",
                company: "CodeWithChris",
                exp: 177
            ),
            Person(
                name: "Travis Bickle",
                address: "99 Youtalkingtome Road",
                company: "CodeWithChris",
                exp: 99
            ),
            Person(
                name: "Walter Sobchak",
                address: "8 Dude Place",
                company: "CodeWithChris",
                exp: 23
            ),
            Person(
                name: "Julius Winnfield",
                address: "25 Ezekiel Ave",
                company: "CodeWithChris",
                exp: 17
            )
        ]
    return people
}
