import Foundation

protocol TokenManager {
    var token: String? { get set }
    
    func validateToken() throws -> String
}

extension TokenManager {
    func validateToken() throws -> String {
        guard let token = self.token else {
            throw NSError(domain: "TokenErrorDomain", code: -1, userInfo: [NSLocalizedDescriptionKey: "Ошибка: Токен доступа не найден"])
        }
        return token
    }
}