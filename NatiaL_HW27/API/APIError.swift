//
//  APIError.swift
//  NatiaL_HW27
//
//  Created by Natia's Mac on 30.08.22.
//

import Foundation
enum ApiError: Error {
    case invalidUrl
    case httpError
    case decodingError
}
