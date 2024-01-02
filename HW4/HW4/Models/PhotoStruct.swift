import Foundation

struct Photo: Codable {
    let sizes: [PhotoSize]
    let text: String
}

struct PhotoSize: Codable {
    let height: Int
    let type: String
    let width: Int
    let url: String
}

struct PhotosResponse: Codable {
    let response: PhotosResponseData
}

struct PhotosResponseData: Codable {
    let count: Int
    let items: [Photo]
}
