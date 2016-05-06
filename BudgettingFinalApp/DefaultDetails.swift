//
//  DefaultDetails.swift
//  BudgettingFinalApp
//
//  Created by student3 on 5/6/16.
//  Copyright © 2016 JohnHerseyHighSchool. All rights reserved.
//

import Foundation

class Info
{
    var Housing: String
    var Transportation: String
    var Taxes: String
    var Utilities: String
    var Food: String
    var Insurance: String
    var Debt: String
    var Healthcare: String
    var Entertainment: String
    var Chariety: String
    var Clothing: String
    var Education: String
    var Misc: String
    
    init(Housing h: String, Transportation t: String, Taxes x: String, Utilities u: String, Food f: String, Insurance i: String, Debt d: String, Healthcare hc: String, Entertainment e: String, Chariety c: String, Clothing cl: String, Education ed: String, Misc m: String)
    {
        Housing = h
        Transportation = t
        Taxes = x
        Utilities = u
        Food = f
        Insurance = i
        Debt = d
        Healthcare = hc
        Entertainment = e
        Chariety = c
        Clothing = cl
        Education = ed
        Misc = m
    }
    init()
    {
        Housing = ""
        Transportation = ""
        Taxes = ""
        Utilities = ""
        Food = ""
        Insurance = ""
        Debt = ""
        Healthcare = ""
        Entertainment = ""
        Chariety = ""
        Clothing = ""
        Education = ""
        Misc = ""
    }
}








