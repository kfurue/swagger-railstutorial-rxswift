//
// User.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Return followers of user with id. */

open class User: Codable {

    /** User ID. */
    public var id: Int
    /** User name. */
    public var name: String
    /** User email address */
    public var email: String


    
    public init(id: Int, name: String, email: String) {
        self.id = id
        self.name = name
        self.email = email
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(id, forKey: "id")
        try container.encode(name, forKey: "name")
        try container.encode(email, forKey: "email")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        id = try container.decode(Int.self, forKey: "id")
        name = try container.decode(String.self, forKey: "name")
        email = try container.decode(String.self, forKey: "email")
    }
}

