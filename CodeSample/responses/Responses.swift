
//
//  Responses.swift
//  CallRecording
//
//  Created by Mohd Ali Khan on 21/07/2020.
//  Copyright © 2020 cis. All rights reserved.
//

import Foundation

struct SuccessResponseModel: Codable {
    let version: Version?
    let status, errorcode: Int?
    let message: String?
    let data: DataClass?
}

// MARK: - Version
struct Version: Codable {
    let status, versioncode: Int?
    let versionmessage, currentVersion: String?
    
    enum CodingKeys: String, CodingKey {
        case status, versioncode, versionmessage
        case currentVersion = "current_version"
    }
}


// MARK: - DataClass
struct DataClass: Codable {
    let login: Login?
    let register: Register?
    
    
    enum CodingKeys: String, CodingKey {
        case login
        case register
    }
}


// MARK: - Register
struct Register: Codable {
    let userID, password: String?
    
    enum CodingKeys: String, CodingKey {
        case userID = "user_id"
        case password
    }
}


// MARK: - Login
struct Login: Codable {
    let authorization, userID, userEmail, firstname: String?
    let companyName, userRole, state, city: String?
    let customerID, pincode, adminStatus, countryCode: String?
    let userPhone: String?
    let userPic: String?
    
    enum CodingKeys: String, CodingKey {
        case authorization = "Authorization"
        case userID = "user_id"
        case userEmail = "user_email"
        case firstname
        case companyName = "company_name"
        case userRole = "user_role"
        case state, city
        case customerID = "customer_id"
        case pincode
        case adminStatus = "admin_status"
        case countryCode = "country_code"
        case userPhone = "user_phone"
        case userPic = "user_pic"
    }
}
