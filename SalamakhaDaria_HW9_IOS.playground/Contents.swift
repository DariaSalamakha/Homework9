let dictOfPrice = ["T-shirt": 600, "Dress": 954, "Pants": 1230, "Blouse": 688, "skirt": 499]
let stock: [String: Int?] = ["T-shirt": 10, "Dress": 11, "Blouse": 8, "skirt": 23]

func priceOfGoods(nameOfGoods: String) -> Int? {
    guard stock[nameOfGoods] != nil else {return nil}
    
    return dictOfPrice[nameOfGoods]
}

let goods = "Pants"
if let price = priceOfGoods(nameOfGoods: goods) {
    print("Price of \(goods) = \(price)")
} else {
    print("\(goods) is sold out")
}

//

struct Computer{
    
    var ram: Int
    var yearManufactured: Int
    
    init?(ram: Int, yearManufactured: Int) {
        if ram > 0 && yearManufactured > 1970 && yearManufactured < 2021 {
            self.ram = ram
            self.yearManufactured = yearManufactured
        } else {
            return nil
        }
    }
}

if let computer1 = Computer(ram: 8, yearManufactured: 2018) {
    print("Ram = \(computer1.ram) and year manufactured = \(computer1.yearManufactured)")
}

if let computer1 = Computer(ram: 16, yearManufactured: 2022) {
    print("Ram = \(computer1.ram) and year manufactured = \(computer1.yearManufactured)")
}

//

let array: [Any] = [1, 2, true, false, "String1", "String2", 21.1, 32.2]

for i in array {
    if let check = i as? Int {
        print("Ціле число має значення \(check)")
    } else if let check = i as? String {
        print("Стрічка має значення \(check)")
    } else if let check = i as? Double {
        print("Число з плаваючою точкою має значення \(check)")
    } else {
        print("Булево має значення \(i)")
    }
}

//

struct Student {
    
    let name: String?
    let numberOfCar: Int?
    var mark: Int?
    
}

let student1 = Student(name: "Vasya", numberOfCar: nil, mark: 10)
let student2 = Student(name: "Petya", numberOfCar: 4321, mark: nil)
let student3 = Student(name: "Katya", numberOfCar: 8908, mark: 12)
let student4 = Student(name: "Sofia", numberOfCar: 8888, mark: nil)
let student5 = Student(name: "Ahmed", numberOfCar: 7070, mark: 7)

let arrOfStudents = [student1, student2, student3, student4, student5]

for student in arrOfStudents {
    
    var string = "Student \(student.name!)"
    var countOfVar = 0
    
    if let mark = student.mark {
        string += " has a mark \(mark)"
        countOfVar += 1
    }
    
    if student.numberOfCar != nil && countOfVar > 0 {
        string += " and a car with number \(student.numberOfCar!)"
    } else if let car = student.numberOfCar {
        string += " has a car with number \(car)"
        
    }

        print(string)
    
}
