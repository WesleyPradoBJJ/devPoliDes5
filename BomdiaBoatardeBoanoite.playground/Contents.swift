import Foundation

// Entender Date
// Entender Calendar
// Buscar no dispositivo a hora exata, e de acordo com a hora apresentar a mensagem correta.
// Apresentar hora, seguida da mensagem.

func pegarSaudacao() -> String{
    let date = Date()
    let calendar = Calendar.current
    let day = calendar.component(.day, from: date)
    let month = calendar.component(.month, from: date)
    let year = calendar.component(.year, from: date)
    let hour = calendar.component(.hour, from: date)
    let minutes = calendar.component(.minute, from: date)
    let actualTime = "\(hour):\(minutes)"
    let timeCalc = "\(hour)\(minutes)"
   
    if let time = Int(timeCalc){
        switch time {
        case 0600..<1159:
            return ("\(day)/\(month)/\(year),\(actualTime). Bom dia!!!")
            
        case 1200..<1759:
            return ("\(day)/\(month)/\(year),\(actualTime). Boa Tarde!!!")
            
        case 1800..<2359:
            return ("\(day)/\(month)/\(year),\(actualTime). Boa Noite!!!")
            
        case 0000..<0559:
            return ("\(day)/\(month)/\(year),\(actualTime). Ainda está acordado? Vai dormir vagabundo!")
        default:
            break
        }
    }
    return actualTime
}


print(pegarSaudacao())





