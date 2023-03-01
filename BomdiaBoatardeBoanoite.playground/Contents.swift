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
   
        switch hour {
        case 6..<11:
            return ("\(day)/\(month)/\(year),\(actualTime). Bom dia!!!")
            
        case 12..<17:
            return ("\(day)/\(month)/\(year),\(actualTime). Boa Tarde!!!")
            
        case 18..<23:
            return ("\(day)/\(month)/\(year),\(actualTime). Boa Noite!!!")
            
        case 00..<05:
            return ("\(day)/\(month)/\(year),\(actualTime). Ainda está acordado? Vai dormir vagabundo!")
        default:
            break
        }
    return actualTime
    }
    

print(pegarSaudacao())





