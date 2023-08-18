import Foundation

let person = """
{
    "name": "Josh",
    "age": 30,
    "full_name": "Josh Smith"
}
"""

struct Person:Codable {
    var name,
        fullName:String
    var age:Int
}

func main()  {
    //convert the string to data
    let personData=Data(person.utf8)
    //create a JSONDecoder instance
    let jsonDecoder=JSONDecoder()
    
    //use the jsondecoder instance to decode the json into a Person object
    do{
        let decodedPerson = try jsonDecoder.decode(Person.self, from: personData)
        print("Person --\(decodedPerson.name) was decode and their age is: \(decodedPerson.age)")
    }catch{
        print("Error:\(error.localizedDescription)")
    }
}

