import Foundation

struct FriendInfo: Codable {
    let id: Int
    let firstName: String
    let lastName: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first_name"
        case lastName = "last_name"
    }
}

struct FriendInfoResponse: Codable {
    let response: [FriendInfo]
}