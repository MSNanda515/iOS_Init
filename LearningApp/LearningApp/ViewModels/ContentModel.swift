//
//  ContentModel.swift
//  LearningApp
//
//  Created by Meharpreet Singh Nanda on 2021-08-25.
//

import Foundation

class ContentModel: ObservableObject {
    @Published var modules:[Module] = [Module]()
    var styleData:Data?
    init() {
        getLocalData()
    }
    
    func getLocalData() {
        // get a url to the json object
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        do {
            // Read the file in a data object
            let jsonData = try Data(contentsOf: jsonUrl!)
            let jsonDecoder = JSONDecoder()
            do {
                //assign the data to an object
                let modules = try jsonDecoder.decode([Module].self, from: jsonData)
                self.modules = modules
            }
            catch {
                print("decoder error")
                print(error)
            }
            
        }
        catch {
            print("Couldn't parse local data")
            print(error)
        }
        // Parse the style data
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
        do {
            let styleData = try Data(contentsOf: styleUrl!)
            // Assign the data to the object
            self.styleData = styleData
        }
        catch {
            print("Couln't parse style data")
            print(error)
        }
    }
}
