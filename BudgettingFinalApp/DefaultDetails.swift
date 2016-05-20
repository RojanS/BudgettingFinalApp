//
//  DefaultDetails.swift
//  BudgettingFinalApp
//
//  Created by student3 on 5/6/16.
//  Copyright © 2""16 JohnHerseyHighSchool. All rights reserved.
//
//
import Foundation

class Info
{
    var Name: String
    var Housing: String
    var Transportation: String
    var Utilities: String
    var Food: String
    var Insurance: String
    var Savings: String
    var Healthcare: String
    var Entertainment: String
    var Chariety: String
    var Clothing: String
    var Misc: String
    
    init(Name n: String, Housing h: String, Transportation t: String, Utilities u: String, Food f: String, Insurance i: String, Savings d: String, Healthcare hc: String, Entertainment e: String, Chariety c: String, Clothing cl: String, Misc m: String)
    {
        Name = n
        Housing = h
        Transportation = t
        Utilities = u
        Food = f
        Insurance = i
        Savings = d
        Healthcare = hc
        Entertainment = e
        Chariety = c
        Clothing = cl
        Misc = m
    }
    init()
    {
        Name = ""
        Housing = ""
        Transportation = ""
        Utilities = ""
        Food = ""
        Insurance = ""
        Savings = ""
        Healthcare = ""
        Entertainment = ""
        Chariety = ""
        Clothing = ""
        Misc = ""
    }
}








