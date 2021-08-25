//
//  Params.swift
//  Clustry
//
//  Created by Mohd Ali Khan on 14/11/2020.
//  Copyright © 2021 m@k. All rights reserved.
//

import Foundation

enum UserParams {
    
    struct Signup:Codable {
        let email:String?
        let name:String?
        let user_phone:String?
        let state:String?
        let city:String?
        let pincode:String?
        let company_name:String?
        let country_code:String
        let type:UserType?
        let busi_address:String
        let busi_lat:String
        let busi_lng:String
    }
    
    struct Login:Codable {
        let email:String?
        let password:String?
        let fcm_key:String?
    }
    
    struct ForgotPassword:Codable {
        let email:String?
    }
    
    struct ChangePassword:Codable {
        let id:String?
        let old_password:String?
        let new_password:String?
    }
    
    struct SocialLogin:Codable {
        let type:SocialLoginType?
        let registration_type:UserType?
        let social_id:String?
        let full_name:String?
        let user_email:String?
        let isverified:Bool?
        let fcm_key:String?
        let image_url:String?
    }
    
    struct Feedback:Codable {
        let feedback:String?
    }
    
    struct Profile:Codable {
        let id:String?
    }
    
    struct ProfileImage:Codable {
        let images:Data?
    }
    
    struct Search:Codable {
        let name: String?
    }
    
    struct UpdateProfile:Codable {
        let firstname:String?
        let country_code:String?
        let user_phone:String?
        let type:UserType?
        let company_name:String?
        let city:String?
        let state:String?
        let pincode:String?
        let busi_address:String?
        let website:String?
        let busi_description:String?
        let busi_lat:String?
        let busi_lng:String?
    }
}

enum UserType: String, Codable {
    case saloon = "2"
    case user = "4"
}


enum SocialLoginType: String, Codable {
    case facebook = "1"
    case google = "2"
    case apple = "3"
}

