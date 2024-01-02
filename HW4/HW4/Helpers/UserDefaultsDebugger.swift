import Foundation

class UserDefaultsDebugger {
    static func printUserDefaults() {
        // Получение всех ключей из UserDefaults
        let allKeys = UserDefaults.standard.dictionaryRepresentation().keys

        // Вывод всех ключей и их соответствующих значений в консоль
        print("Данные из UserDefaults: ")
        for key in allKeys {
            if let value = UserDefaults.standard.value(forKey: key) {
                print("Key: \(key), Value: \(value)")
            }
        }
    }
}