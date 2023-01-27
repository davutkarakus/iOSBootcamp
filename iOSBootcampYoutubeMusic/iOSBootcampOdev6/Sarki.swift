//
//  Sarki.swift
//  iOSBootcampOdev6
//
//  Created by Davut Karakuş on 26.01.2023.
//

import Foundation
class Sarki {
    var sarkiId : Int?
    var sarkiAd : String?
    var sarkiSanatci : String?
    var sarkiFotograf : String?
    init(sarkiId: Int, sarkiAd: String, sarkiSanatci: String, sarkiFotograf: String) {
        self.sarkiId = sarkiId
        self.sarkiAd = sarkiAd
        self.sarkiSanatci = sarkiSanatci
        self.sarkiFotograf = sarkiFotograf
    }
}
