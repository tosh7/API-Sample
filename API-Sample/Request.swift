//
//  Request.swift
//  API-Sample
//
//  Created by Satoshi Komatsu on 2018/08/26.
//  Copyright © 2018年 Satoshi Komatsu. All rights reserved.
//

import Foundation
import APIKit

protocol GitHubRequest: Request {
}

extension GitHubRequest {
    var baseURL: URL {
        return URL(string: "https://api.github.com")!
    }
}

struct  FetchRepositoryRequest: GitHubRequest {
    var userName: String
    var path: String {
        return "/users/\(userName)/repos"
    }
    
    typealias Response = [Any]
    
    var method: HTTPMethod {
        return .get
    }
}
