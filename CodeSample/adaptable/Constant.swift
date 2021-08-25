//
//  Constant.swift
//  Clustry
//
//  Created by Mohd Ali Khan on 06/11/2020.
//  Copyright © 2021 m@k. All rights reserved.
//

import UIKit

enum Device:String {
    case iphone
    case ipad
}

enum AppColor:String {
    case Red = "#E71121"
    case Brown = "#2D1408"
    case Grey = "#A3A3A5"
    case Purple = "#291FCB"
}

var iOSDevice: Device = .iphone
let device_type = "ios"
let device_id = UIDevice.current.identifierForVendor?.uuidString
let errorMessage = "Something went wrong"
let SessionExpireMessage = "Your session is expired, please login again. Thank you."
let BadRequesErrorMessage = "Incorrect request by user"
let NetworkErrorMessage = "No internet connection, please check you internet connection"
let ServerErrorMessage = "Server is not available try later"
let AuthorizeErrorMessage = "You are not authorized, please login again"
let ParsingErrorMessage = "Request response is incorrect parse issue"


// MARK:- Multipart Image Keys
let ProfileImageKey = "profile_image"
let SaloonMediaPhotoKey = "asset_url[]"
let SaloonMediaVideoKey = "asset_url"
let EmployeeImageKey = "emp_img"

enum AppDateFormate:String {
    case count = "hh:mm"
    case time = "hh:mm a"
    case date = "yyyy-MM-dd"
    case dateAndTime = "hh:mm a dd MMM yyyy"
}

enum AppFonts:String {
    case Black = "SFProDisplay-Black"
    case Bold = "SFProDisplay-Bold"
    case Heavy = "SFProDisplay-Heavy"
    case Light = "SFProDisplay-Light"
    case Medium = "SFProDisplay-Medium"
    case Regular = "SFProDisplay-Regular"
    case Semibold = "SFProDisplay-Semibold"
    case Thin = "SFProDisplay-Thin"
    case Ultralight = "SFProDisplay-Ultralight"
}

func serverErrorMessage(errorCode: ErrorCode?) -> String {
    switch errorCode {
    case .authorize:
        return AuthorizeErrorMessage
    case .badRequest:
        return BadRequesErrorMessage
    case .network:
        return NetworkErrorMessage
    case .parsing:
        return ParsingErrorMessage
    case .server:
        return ServerErrorMessage
    default:
        return errorMessage
    }
}
