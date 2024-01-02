import Foundation

/**
 Класс для получения ID друга
 */
class FriendIDProvider {
    func getFriendID(from friend: Friend) -> String {
        return String(friend.id) // предполагается, что id в структуре Friend является числовым значением
    }
}