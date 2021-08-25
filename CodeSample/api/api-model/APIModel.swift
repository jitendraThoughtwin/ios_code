//
//  APIModel.swift
//  Clustry
//
//  Created by Mohd Ali Khan on 20/11/2020.
//  Copyright © 2021 m@k. All rights reserved.
//

import Foundation

struct AssignedToUserCreatable:Codable {
    let group_id: Int?
    var pageno: Int?
}

struct UserProfile:Codable {
    let id: Int
}

struct ProfileUpdatable:Codable {
    let name:String?
    let phone:String?
    let address:String?
    let dob:Double?
    let delete_attachment:String?
    let isd_code:String?
}

