//
//  Person.swift
//  AppIOS
//
//  Created by Liza Sapsaj on 11/5/21.
//

import Foundation


struct Person{
    var name: String
    var lastName: String
    var age: Int
    enum Gender :String {
        case male = "Male"
        case female = "Female"
    }
    
}
