//
//  main.swift
//  DataTypes Test1
//
//  Created by admin on 6/20/23.
//

import Foundation

//print("Hello, World!")
//var variable:Int = 10
//let constant = 11
//print(variable)
//print(constant)
//var str = "gajab"
//for addd in str{
//    print(addd)
//}

//var name = "My name is"
//var actual = "Utkarsh"
//print(name,actual)
//var legs = 2;
//var interpolation = "\(name) \(actual) and I have \(2) legs "
//print(interpolation)
//print(actual.lengthOfBytes(using: String.Encoding.utf8))



//var arr=[10,67,"Pojo"] as [Any]
//var arr1:Array<Int> = [10,20,38];
//print(arr[2])
//for a in arr1{
//    print(a)
//}


//var arr = ["3","4","5","6","9","8"]
//print(arr)
//arr[0...3] = ["1","2"]
//for a in arr{
//    print(a)
//}
//
//arr.removeAll(keepingCapacity: true);
//print(arr.count)


//var dict = ["key1":"34","key2":"val2"]
//print(dict.values)
//print(dict["key2"])



//var dictionary1 = ["key1":"value1","key2":"value2","key3":"value3","key4":"value4","key5":"value5"]
//print(dictionary1["key1"])
//dictionary1["key1"] = "YOGA"
//print(dictionary1["key1"])
//print(dictionary1.count)
//dictionary1["key3"] = nil
//print(dictionary1.count)
//print(dictionary1["key10"])
////dictionary1.setValue("oo", forKey: "KK")
//
//var dic = dictionary1._bridgeToObjectiveC()
//
//print(dic)



//var arr:Array<Any> = [10,"QP",[1.1:"lol"]]
//print(arr[2])



//var tuple = (18,"Three")
//print(tuple.1)

//var xyz = "11"
//var int1:Int? = Int(xyz)
//print("hii \(int1!)")



//var name = "wow"
//assert(name == "wow","not possible")


//typealias lol = Float
//var wow:lol = 10
//print(wow)


//for var i = 0; i<10; i++{
//    print(i)
//}

//for _ in 0...5{
//    var c = Int(arc4random()%100)
////    let no1 = Int.random(in: 0...100)
//    print(c)
//}

//for i in 0...6{
//var val = Int.random(in: 1...100)
//switch(val){
//case 1,2,3,4:
//    print("1 or 2 or 3 or 4     value = \(val)")
//case 5,6:
//    print("5 or 6        value = \(val)")
//case 7...50:
//    print("value in between 7 and 50 so val = \(val)")
//default:
//    print("default         value = \(val)")
//}
//}

//var tuple = (1,2,3)
//switch tuple{
//case (1...3,2...6,1...10):
//    print("1,2,1")
//case (1,2,3):
//    print("1,2,3")
//default:
//    print("Default")
//}



//var tuple2 = (int1:11, int2:22)
//switch tuple2{
//case (int1:0...10,int2:0...10):
//    print("1,2,1")
//case (int1:0...20,int2:0...20):
//    print("1,2,3")
//case (int1:0...30,int2:0...30):
//    print("Yess")
//default:
//    print("Default")
//}




//var tuple3 = (2,7,44)
//switch tuple3{
//case (2,_,0...50):
//    print("yo")
//default:
//    print("Default")
//}



//var tuple4 = (2,7,50)
//switch tuple4{
//case (2,let y,50):
//    print(" x= 2 and y = \(y) z = 50")
//
//case let(x,y,z):
//    print(" x = \(x) and y = \(y) z = \(z)")
//}



//var tuple5 = (10,20)
//switch tuple5{
//case let(x,y) where x==y:
//    print("x==y with values x = \(x) y = \(y)")
//case let(x,y) where x==y/2:
//    print("x = y/2 with values x = \(x) y = \(y)")
//case let(x,y):
//    print("x = \(x) y = \(y)")
//}


//var tuple6 = (10,10)
//switch tuple6{
//case let(x,y) where x==y:
//    print("x==y with values x = \(x) y = \(y)")
//    fallthrough
//case let(x,y) where x==y/2:
//    print("x = y/2 with values x = \(x) y = \(y)")
//case let(x,y):
//    print("x = \(x) y = \(y)")
//}


//loop1: for i in 0...10{
//loop2: for j in 20...30{
//    if j==25{
//        break loop1
//    }
//    print("\(i) . \(j)")
//    }
//}


//for i in j(0...3, by:2){
//    print(i)
//}




//let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//
//for (index, number) in numbers.enumerated() {
//    if index % 2 == 0 {
//        print(number)
//    }
//}



//func fun() -> String{
//    return("lol")
//}
//print(fun());


//func fun() ->(name1:String,name2:String){
//    return("lol","pol")
//}
//print(fun().name2)


//func add(num1:Double, num2:Double) -> (Double){
//    return num1+num2
//}



//func sub(num1:Double, val2 num2:Double) -> (Double){
//    return num1-num2
//}
//print(sub(num1: 3, val2: 1))


//func mul(nums:Double...) -> (Double){
//    var sum:Double = 0;
//    for num in nums{
//        sum += num
//    }
//    return sum
//}
//print(mul(nums: 1,2,3,4,5))



//To reverse the string:
//var name : String = "ghjkl"
//let str = "Hello, World!"
//let reversed = str.reduce("") { String($1) + $0 }
//print(reversed) // Output: "!dlroW ,olleH"


//func add(`var` num1:Double, `var` num2:Double,_ oldSum:inout Double){
//    oldSum = num1+num2+oldSum
//}
//var num1:Double = 2
//var num2:Double = 3
//var oldSum:Double = 4
//print(add(num1,num2,&oldSum))
//print(oldSum)



//Use of in-out for pass by reference
//func add(_ num1:Double, _ num2:Double, oldSum:inout Double){
//    oldSum = num1+num2+oldSum
//}
//var num1:Double = 2
//var num2:Double = 3
//var oldSum:Double = 4
//add(num1,num2,oldSum: &oldSum)
//print(oldSum)



//func increment(_ value: inout Int) {
//    value += 1
//}
//
//var number = 5
//increment(&number)
//print(number) // Output: 6


//func add(num1:Double,num2:Double) -> Double{
//    return num1+num2
//}
//func sub(num1:Double, num2:Double) -> Double{
//    return num1-num2
//}

//
//var aloha = add
//print(aloha(10,20))


//Function as return type
//func functionSelect(addition:Bool) ->(Double,Double) -> Double{
//    return (addition) ? add : sub
//}
//var fun = functionSelect(addition: true)
//print(fun(2,3))


//func call(num1:Double,num2:Double,addition:Bool){
//    func functionSelect(addition:Bool) ->(Double,Double) -> Double{
//        return (addition) ? add : sub
//    }
//    func add(num1:Double,num2:Double) -> Double{
//        return num1+num2
//    }
//    func sub(num1:Double, num2:Double) -> Double{
//        return num1-num2
//    }
//    let fun = functionSelect(addition: addition)
//    print(fun(num1,num2))
//}
//call(num1: 10, num2: 23, addition: true)



//enum MyEnum{
//    case name1,name2
//    case name3, name4
//}
//
//var enumration = MyEnum.name3
//
//switch enumration{
//case MyEnum.name1: print("1")
//case MyEnum.name2: print("2")
//case MyEnum.name3: print("3")
//case MyEnum.name4: print("4")
//}



//enum names:Int{
//    case name1
//    case name2
//    case name3
//    case name4
//}
//print(names.name4.rawValue)



//enum names{
//    case name1 (String)
//    case name2 (Int,Int)
//    case name3 (String,Int)
//}
//
//var enum1 = names.name1("aaaa")
//print(enum1)



//class MyClass{
//    var name:Int;
//    var subject:Int;
//}
//
//struct MyStructures{
//    var name1:Int;
//    var subject1:Int;
//}
//
//var myStructures = MyStructures(name1: 22, subject1: 1);
//print(myStructures.name1)




//class MyClass{
//    var name:String;
//    var subject:String;
//    init(name:String,subject:String){
//        self.name = name
//        self.subject = subject
//    }
//}
//
//struct MyStructures{
//    var name1:String;
//    var subject1:String;
//}
//
//var str1 = MyStructures.init(name1: "11", subject1: "ghjkl")
//var str2 = str1
//str2.name1 = "qpqp"
//print(str1.name1)







//struct Body {
//    var height:Double = 0
//    var weight = 0
//}
//
//class Person {
//    var body = Body()
//    var name = ""
//    var age = 0
//}
//var bodyStruct = Body(height: 5.10, weight: 72)
//
//var person = Person()
//person.body = bodyStruct
//print("height = \(person.body.height) weight = \(person.body.weight)")



//struct Body {
//    var height:Double = 0
//    var weight = 0
//}
//
//class Person {
//    var body = Body()
//    var name = ""
//    var age = 0
//}
//
//let body = Body(height: 4.5, weight: 55)
//body.weight = 47
//
//let person = Person()
//person.name = "Utkarsh"


//Computed properties
//struct Body {
//    var height:Double = 0
//    var weight:Double = 0
//    var bmi:Double {
//        get{
//        return (weight/pow(height/100, 2))
//        }
////        set(newBMI){
////            weight = newBMI * pow(height/100, 2)
////        }
//        set{
//            weight = newValue * pow(height/100, 2)
//        }
//    }
//}
//
//var body = Body(height: 177, weight: 73)
//print(body.bmi)
//body.bmi = 22
//print(body.weight)




//Property observer
//struct Body {
//    var height:Double = 0 {
//        willSet(newHeight){
//            print("old height = \(height)  new height = \(newHeight)" )
//        }
//        didSet(oldHeight){
//            print("old height = \(oldHeight) new height = \(height)")
//        }
//    }
//    var weight:Double = 0
//    var bmi:Double{
//                get{
//                return (weight/pow(height/100, 2))
//                }
//                set{
//                    weight = newValue * pow(height/100, 2)
//                }
//    }
//}
//var body = Body(height: 122, weight: 47)
//body.height = 147




//class Person{
//    class var planet:String{
//            return "earth"
//    }
//    var age = 0
//}
//print(Person.planet)




//Creaion of an array
//var arr = [Int]()
//var arr = [1,4,32,2]
//print(arr)


//var someInts = [Int](count: 3, repeatedValue: 10)
//var someInts:[Int] = [10, 20, 30]
//print(someInts)

//var intsA = Array(repeating: 2, count: 2)
//var intsB = Array(repeating: 1, count: 3)
//
//var intsC = intsA + intsB
//for item in intsC {
//    print(item)
//}

//var someSet = Set<Int>()
//someSet.insert(1)
//someSet.insert(2)
//someSet.insert(1)
//someSet.insert(8)
//print(someSet.contains(1))
//
//for _ in someSet {
//   print(someSet)
//}
//
////Swift sets are not in an ordered way, to iterate over a set in ordered way use
//
//for _ in someSet.sorted() {
//    print(someSet)
//}



//var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
//print(someDict)
//
//var cities = ["Delhi","Bangalore","Hyderabad"]
//var Distance = [2000,10, 620]
//let cityDistanceDict = Dictionary(uniqueKeysWithValues: zip(cities, Distance))
//print(cityDistanceDict)
//print("-------------------------------")
//for (index, keyValue) in someDict.enumerated(){
//    print("DIctionary key = \(index) value = \(keyValue)")
//}



//class Person {
//    var height:Double = 0
//    var weight:Double = 0
//    func getProperties()->[String: Any]{
//        return[
//        "height":height,
//        "weight":weight,
//        ]
//    }
//    func bmi(height:Double, weight:Double) -> Double{
//        return weight/pow(height/100,2)
//    }
//}
//var person = Person()
//print(person.bmi(height: 33, weight: 11))



//func multiply(_ a: Int, by b: Int) {
//    print(a * b)
//}
//
//multiply(5, by: 3) // Output: 15
//
//func mul(_ a:Int,_ b:Int){
//    print(a*b)
//}
//mul(2,2)


//Mutating methods
//struct str{
//    var name = "aaaa"
//    mutating func amendName(nameAmend:String){
//        name += nameAmend
//    }
//    func property() ->[String:Any]{
//        return[
//            "name":name
//        ]
//    }
//}
//var strMain = str.init(name: "ss")
//strMain.amendName(nameAmend: "google")
//print(strMain.name)



//Type Methods
//struct str{
//    var name = "aaaa"
//    var age = 10
//    static func mul(num1:Int, num2:Int) -> Int{
////        return num2*num1+age
//        return num2*num1
//    }
//}
//
//class cls{
//    var name = "apple"
////    static func mul(num1:Int,num2:Int) -> Int{
////        return num1*num2
////    }
//    class func mul(num1:Int,num2:Int) -> Int{
//        return num1*num2
//    }
//}
//
//enum MathOperation {
//    case addition
//    case subtraction
//    case multiplication
//    case division
//
//    static func perform(operation: MathOperation, on a: Int, and b: Int) -> Int {
//        switch operation {
//        case .addition:
//            return a + b
//        case .subtraction:
//            return a - b
//        case .multiplication:
//            return a * b
//        case .division:
//            return a / b
//        }
//    }
//}
//print(MathOperation.perform(operation: MathOperation.subtraction, on: 10, and: 5))
//
//
//
//print(str.mul(num1: 11, num2: 33))
//print(cls.mul(num1: 2, num2: 333))




//var arr = [1,2,3,4,5,6]
//subscript(index: Int) -> Int{
//    get{
//        return arr[index]
//    }
//    set(insVal){
//        arr[index] = insVal
//    }
//}


//class Class{
//    var array = [1, 2, 3, 4, 5]
//
//    subscript(index: Int) -> Int {
//        get {
//            return array[index]
//        }
//        set(newValue) {
//            array[index] = newValue
//        }
//    }
//}
//var cls = Class()
//cls[1] = 11
//print(cls[1])
//for value in 0...4{
//print(cls[value])
//}



//enum Weekday: Int {
//    case sunday = 1, monday, tuesday, wednesday, thursday, friday, saturday
//
//    func weekday(for rawValue: Int) -> Weekday? {
//        return Weekday(rawValue: rawValue)
//    }
//}
//
//let weekday = Weekday.sunday.weekday(for: 3)
//print(weekday) // Output: Optional(Weekday.wednesday)



//class Person{
//    var arr = ["ff","ss","tt"]
//    var arr2 = [1,9,4,6,4]
//    subscript(val:Int) -> Int{
//        get {
//            var count = 0
//            for v in arr2{
//                if(v==val){
//                    count+=1
//                }
//            }
//            return count
//        }
//    }
//    subscript(index1:Int,index2:Int) -> (String,Int){
//        return (arr[index1],arr2[index2])
//    }
//}
//
//var person = Person()
//print(person[4])


//class Body{
//    var name = "Eyes"
//}
//class Google:Body{
//    var age = 10
//}
//var google = Google()
//google.name = "qqqq"
//print(google.name)


//class Body{
//    var name = "Eyes"
//    func printAll(){
//        print("Eyes")
//    }
//}
//class Google:Body{
//    var age = 10
//   override func printAll(){
//        print("Google")
//    }
//}
//var google = Google()
//print(google.printAll())



//class Body{
//    var name = "Eyes"
//}
//class Google:Body{
//    var age = 10
//    override var name:String{
//        willSet{
//            print("lol")
//        }
//        didSet{
//            print("pol")
//        }
//    }
//}
//var google = Google()
//google.name = "hii"
//print(google.name)


//class Body{
//    var name:String
//    var age:Int
//    init(){
//        self.name = "NAME"
//        age = 22
//    }
//}
//var body = Body()
//print("name = \(body.name) age = \(body.age)")



//Optional type
//var name: String? = "lol"
//print(name ?? "qq")
//func processOptionalString(optionalString: String?) {
//    guard optionalString != nil else {
//        // Handle the case where optionalString is nil
//        print("Hayeeeeeeeee! \(String(describing: optionalString))")
//        return
//    }
//    // Use unwrappedString safely within this block
//    print("Sab Sahi h")
//}
//processOptionalString(optionalString: nil)



//class Person{
//    var name:String = "qq"
//    var age:Int = 11
//    init(name:String, age:Int){
//        self.name = name
//        self.age = age
//    }
//    init(name:String){
//        self.name = name
//    }
//    init(age:Int){
//        self.age = age
//    }
//}
//
//var person = Person(name: "ww", age: 12)
//print(person.name)



//struct Body{
//    var name:String = "lungs"
//    var number:Int = 2
//}
//class Person{
//    var body1:Body = Body()
//    var body2:Body? = Body()
//    var body3:Body! = Body()
//    var body4:Body?
//    var body5:Body!
//}
//var person = Person()
//if (person.body1.name == person.body3.name){
//print("Yes")
//} else{
//    print("No")
//}



//struct Body{
//    var name:String = "lungs"
//    var number:Int = 2
//    static var val:Int = 33
//}
//
//var body1 = Body()
//var body2 = Body(name: "hdrhrt", number: 99)
//Body.val = 55
//print(body2.name)



//struct Body{
//    var name:String
//    var number:Int
//    init(name:String, no:Int){
//        self.name = name
//        number = no
//    }
//    init(name:String){
//        self.init(name: name, no: 15)
//    }
//}
//var body2 = Body(name: "hdrhrt")
//print(body2.name)


//var game:String?
//if let name = game {
//    print("Hello, \(name)")
//}else{
//    print("No")
//}



//let vegetable = "red pepper"
//switch vegetable {
//case "celery":
//    print("Add some raisins and make ants on a log.")
//case "cucumber", "watercress":
//    print("That would make a good tea sandwich.")
//case let x where x.hasSuffix("pepper"):
//    print("Is it a spicy \(x)?")
//default:
//    print("Everything tastes good in soup.")
//}
// Prints "Is it a spicy red pepper?"



//class Animal {
//    init() {
//        // Initialization code for Animal
//    }
//}
//
//class Person: Animal {
//    var name: String
//    var age: Int
//    var dateOfBirth: NSDate
//
//    init(age: Int, name: String, dateOfBirth: NSDate) {
//        self.age = age
//        self.name = name
//        self.dateOfBirth = dateOfBirth
//        super.init()
//    }
//
//    convenience init(name: String, dateOfBirth: NSDate) {
//        let calendar = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)
//        let components = calendar?.components([.year], from: dateOfBirth as Date, to: Date(), options: [])
//        let age = components?.year ?? 0
//        self.init(age: age, name: name, dateOfBirth: dateOfBirth)
//    }
//}
//
//let calendar = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)
//let dateOfBirth = calendar?.date(era: 2000, year:2000, month: 1, day:3, hour:0, minute:0, second:0, nanosecond: 0)
//let person = Person(name: "PPPP", dateOfBirth: dateOfBirth! as NSDate)



//class Animal {
//    var name: String
//    var age: Int
//    init() {
//        // Initialization code for Animal
//        self.name = "ll"
//        self.age = 44
//    }
//    required init(age: Int, name: String) {
//        self.age = age
//        self.name = name
//    }
//    convenience init(name:String){
//        self.init()
//        self.name = name
//        self.age = 10
//    }
//}
//
//class Person: Animal {
//    var thinking:String
//    override init(){
//        thinking = "Positive"
//        super.init()
//    }
//
//    required init(age: Int, name: String) {
//        thinking = "Positive"
//        super.init(age: age, name: name)
//    }
//}
//
//let an = Person(age:33,name:"kk")


//Failable variable
//class Creature{
//    var legs:Int
//    init(){
//        legs = 0
//    }
//    init?(legs:Int){
//        self.legs = legs
//        if(legs<0 || legs>=4){
//            return nil
//        }
//    }
//}
//class Animal:Creature{
//    override init() {
//        super.init()
//    }
//    override init?(legs: Int) {
//        super.init(legs: legs)
//    }
//}
//let beast = Creature(legs: 11)
//print(beast?.legs ?? "Wrong number of legs")


//Print
//print("hello","World","1", separator: "*", terminator: "$")


//Array
//var arr = [1,2,3]
//arr.append(contentsOf: [6,7])
//
//print(arr)
//print(arr.contains(3))
//
//var arr2 = [1,2,3,6,7]
//print(arr.elementsEqual(arr2))
//
//print(arr.firstIndex(of: 11) ?? "Not present")
//
//arr.insert(contentsOf: [4,5], at: 5)
//print(arr)



//var arrSorted = arr.sorted();// it will sort in accending order
//let soted = arrSorted.sorted(by: {(item1,item2) -> Bool  in
//    return item1>item2
//} )
//print(soted)
//
//arrSorted.sort(by: {(item1,item2) -> Bool in
//    return item1>item2
//})
//print(arrSorted)
//
//func reverseSort(item1:Int, item2:Int) -> Bool{
//    return item1>item2
//}
//
//func sort(item1:Int, item2:Int) -> Bool{
//    return item1<item2
//}
//
//var arr11 = [5,7,654,2,398,67]
//arr11.sort(by: reverseSort)
//print(arr11)
//
//arr11.sort(by: sort)
//print(arr11)
//
//var arr14 = [1,4,3,8,5,2]
//arr.sort{$0 > $1}
//print(arr14)


//Binding
//class Person{
//    var firstName:String?
//    var lastName:String?
//    init(){
//
//    }
//}
//var person = Person()
//person.firstName = "MDK"
//person.lastName = "G"
//
//if let fn = person.firstName{
//    if let ln = person.lastName{
//        print("name is = \(fn) \(ln)")
//    }
//}
//
////OR
//
//if let fn = person.firstName,
//   let ln = person.lastName, fn == "MDK"{
//    print("name = \(fn) \(ln)")
//}


//let number = 10
//
//if number > 0 && number < 100 && number % 2 == 0 {
//    print("The number is even and within the range.")
//} else {
//    print("The number does not satisfy the conditions.")
//}


//var str = "The concept of optionals doesn’t exist in C or Objective-C. The nearest thing in Objective-C is the ability to return nil from a method that would otherwise return an object, with nil meaning “the absence of a valid object.” However, this only works for objects — it doesn’t work for structures, basic C types, or enumeration values. For these types, Objective-C methods typically return a special value (such as NSNotFound) to indicate the absence of a value. This approach assumes that the method’s caller knows there’s a special value to test against and remembers to check for it. Swift’s optionals let you indicate the absence of a value for any type at all, without the need for special constants."
//
//var count = 0
//for i in str{
//    count+=1
//    if i == "e"{
//    }
//}
//print(count)
////OR
//count = 0
//for i in str where i=="e"{
//    count+=1
//}
//
//print(count)


//enum Flavour{
//    case Vanilla, Strawberry, Chocolate, Banana
//    indirect case TwoFlavours(Flavour,Flavour)
//    indirect case ThreeFlavours(Flavour,Flavour,Flavour)
//}
//
//let flavour = Flavour.ThreeFlavours(Flavour.Vanilla, Flavour.Strawberry, Flavour.Chocolate)

//enum Reason: Error{
//    case NoIceCream, ToMouchWork
//    case MissedBus(date:NSDate)
//}
//func HowWasTheDay(wasIt:Bool, whyNot:Int)throws ->String{
//    switch wasIt{
//    case true:
//        return "It was a great day"
//    case false:
//        switch whyNot{
//        case 0:
//            throw Reason.NoIceCream
//        case 1:
//            throw Reason.ToMouchWork
//        case 2:
//            throw Reason.MissedBus(date: Date() as NSDate)
//        default:
//            return "Its not realy a great day"
//        }
//    }
//}
////do{
////    try HowWasTheDay(wasIt: false, whyNot: 2)
////}catch let err{
////    print("Error aayi h = \(err)")
////}
//
//let ee = try? HowWasTheDay(wasIt: false, whyNot: 2)
//print(ee)


//Optional Binding with optional chaining
//class Person{
//    var firstname : String?
//    var lastname : String?
//    var age : Int?
//    var friends : [Person]?
//    var name:String{
////        return (firstname ?? "") + " " + (lastname ?? "")
//        return firstname! + " " + lastname!
//    }
//    init(){
//
//    }
//    convenience init(firstname : String, lastname: String , age : Int){
//        self.init()
//
//        self.firstname = firstname
//        self.lastname = lastname
//        self.age = age
//    }
//}
//let person:Person? = Person()
//person?.firstname = "Domininc"
//person?.lastname = "Patil"
//person?.age = 23
//
//if let firstname = person?.firstname{
//    print(firstname)
//}
//else{
//    print("no value")
//}
//if let lastname = person?.lastname{
//    print(lastname)
//}
//print(person!.name)
//print(person?.age ?? "")
//optional binding is working


//enum Reason: Error{
//    case NoIceCream, ToMouchWork
//    case MissedBus(date:NSDate)
//}
//
//func HowWasTheDay(wasIt:Bool, whyNot:Int)throws ->String{
//    switch wasIt{
//    case true:
//        return "It was a great day"
//    case false:
//        switch whyNot{
//        case 0:
//            throw Reason.NoIceCream
//        case 1:
//            throw Reason.ToMouchWork
//        case 2:
//            throw Reason.MissedBus(date: Date() as NSDate)
//        default:
//            return "Its not realy a great day"
//        }
//    }
//}
//do{
//    try HowWasTheDay(wasIt: false, whyNot: 2)
//}catch let err{
//    print("Error aayi h = \(err)")
//}

//let ee = try? HowWasTheDay(wasIt: false, whyNot: 2)
//print(ee)

//let days:[(day:String, good:Bool, reason:Int)] = [
//    (day:"Monday", good:false, reason:1),
//    (day:"Tuesday", good:false, reason:8),
//    (day:"Wednesday", good:true, reason:0),
//    (day:"Thursday", good:true, reason:0),
//    (day:"Friday", good:false, reason:0)
//]
//
//var goodDays:[String] = []
//for day in days{
//    if let goodDay = try? HowWasTheDay(wasIt: day.good, whyNot: day.reason){
//        goodDays.append(day.day)
//    }
//}
//print(goodDays)

//OR
//let wednesday = (day:"Wednesday", good:false, reason:0)
//print(try HowWasTheDay(wasIt: wednesday.good, whyNot: wednesday.reason))



//Guard
//enum Reason:Error{
//    case NoIceCream
//    case ToMouchWork
//    case MissedBus(date:NSDate)
//}
//
//func goodDay(wasIt:Bool, whyNot:Int)throws -> String{
////    guard wasIt else{
////        fatalError("Division by zero is not allowed.")
////    }
//    if wasIt{}
//    else{
//        fatalError("Division by zero is not allowed.")
//    }
//    var why = "I saw puppies \n"
//    why += "I ate Ice cream \n"
//    why += "My friends came over \n"
//    return why
//}
//print(try goodDay(wasIt: false, whyNot: 3))


//struct Texture:OptionSet{
//    let rawValue: Int
////    init(rawValue:Int){
////        self.rawValue = rawValue
////    }
//    static let Smooth = Texture(rawValue: 1)
//    static let Rough = Texture(rawValue: 2)
//    static let Grainy = Texture(rawValue: 3)
//    static let Sharp = Texture(rawValue: 4)
//}
//
//let texture: Texture = [.Grainy , .Sharp]
//print(texture.rawValue)


//struct MyOptions: OptionSet {
//    let rawValue: Int
//
//    static let option1 = MyOptions(rawValue: 1)
//    static let option2 = MyOptions(rawValue: 2)
//    static let option3 = MyOptions(rawValue: 4)
//    static let option4 = MyOptions(rawValue: 8)
//}
//
//let options: MyOptions = [.option1, .option3]
//
//print(options.rawValue) // Output: 5



//print(-9 % 4)   // equals -1


//print((1, "zebra") < (2, "apple"))   // true because 1 is less than 2; "zebra" and "apple" have same length
//print((3, "apple") < (3, "bird"))    // true because 3 is equal to 3, and "apple" is less than "bird"
//print((4, "dog") == (4, "dog"))      // true because 4 is equal to 4, and "dog" is equal to "dog"
//print(("blue", -1) < ("purple", 1))        // OK, evaluates to true


//var arr = [1,3,7,4,5,2]
//for num in arr[...4]{
//    print(num)
//}


//let range = ...5
//print(range.contains(7))   // false
//print(range.contains(4))   // true
//print(range.contains(-11514447848))  // true

//let multilineString = """
//These are the same.
//trh
//tr
//"""
//let ppa = """
//fdf
//
//frv
//fr
//"""
//print(ppa)


//let threeMoreDoubleQuotationMarks = #"""
//Here are three more double quotes: """
//"""#

//var str:String = "alafds"
//var i = str.index(str.startIndex, offsetBy: 2)
//str.remove(at: i)
//print(str)
//do{
//try print(str[str.index(after: str.endIndex)])
//}catch let ex{
//    print("pata nahi kya hua \(ex)")
//}
////var arr = ["as","sd","fgf","trfgrt"]
//

//let individualScores = [75, 43, 103, 87, 12]
//var teamScore = 0
//for score in individualScores {
//    if score > 50 {
//        teamScore += 3
//    } else {
//        teamScore += 1
//    }
//}
//print(teamScore)
//// Prints "11"
//
//var scoreDecoration:String = ""
//scoreDecoration = teamScore > 10 ? "🎉" : ""
//print("Score:", teamScore, scoreDecoration)
//// Prints "Score: 11 🎉"

//
//let vegetable = "red pepper"
//switch vegetable {
//case "celery":
//    print("Add some raisins and make ants on a log.")
//case "cucumber", "watercress":
//    print("That would make a good tea sandwich.")
//case let x where x.hasSuffix("pepper"):
//    print("Is it a spicy \(x)?")
//case _ :
//    print("LOL")
//}
//// Prints "Is it a spicy red pepper?"


//let interestingNumbers = [
//    "Prime": [2, 3, 5, 7, 11, 13],
//    "Fibonacci": [1, 1, 2, 3, 5, 8],
//    "Square": [1, 4, 9, 16, 25],
//]
//var largest = 0
//for (ll, numbers) in interestingNumbers {
//    for number in numbers {
//        if number > largest  && ll == "Prime"{
//            largest = number
//        }
//        print(ll)
//    }
//}
//print(largest)
//// Prints "25"


//var n = 2
//while n < 100 {
//    n *= 2
//}
//print(n)
//// Prints "128"
//
//
//var m = 2
//repeat {
//    m *= 2
//} while m < 100
//print(m)
//// Prints "128"



//var name = [24,4,6,21,87,2]
//var arr = name.sorted{$1>$0}
//print(arr)


//protocol ExampleProtocol {
//     var name: String { get }
//     mutating func adjust()
//}
//
//class Uses:ExampleProtocol{
//    var name: String = "Hello this is what"
//    var age = 23
//    func adjust() {
//        print("this is the method of adjust of the user class")
//    }
//}



//var welcome = "hello"
//welcome.insert("!", at: welcome.endIndex)
//// welcome now equals "hello!"
//
//welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))
//// welcome now equals "hello there!"
//
//welcome.remove(at: welcome.index(before: welcome.endIndex))
//// welcome now equals "hello there"
//
//
//let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
//welcome.removeSubrange(range)
//// welcome now equals "hello"
//print(welcome)


//var welcome = "hala , alsd , mda"
//var index = welcome.firstIndex(of: ",") ?? welcome.endIndex
//print(welcome[..<index])


//var arr = [13,33,55,56,3,5,0,7]
//arr[2...] = [8,5,43,3,87,85,43,36]
//for (i,v) in arr.enumerated(){
//    print("\(v) at \(i)")
//}


//var arr1:Set<Int> = [1,4,7,10,12]
//var arr2:Set<Int> = [2,5,8,10,14]
//
//print(arr1.subtracting(arr2).sorted())
//
//var map = [1:"dfsdsf",2:"ef",3:"grgr"]
//print(map.count)
//map[2] = nil
//print(map.count)


//var arr = [1...100]
//for str in stride(from: 0, to: 100, by: 9){
//    print(str)
//}
//var temperatureInCelsius = 12
//
//let weatherAdvice = if temperatureInCelsius <= 0 {
//    "It's very cold. Consider wearing a scarf."
//} else if temperatureInCelsius >= 30 {
//    "It's really warm. Don't forget to wear sunscreen."
//} else {
//    "It's not that cold. Wear a T-shirt."
//}
//
//
//print(weatherAdvice)
//// Prints "It's not that cold. Wear a T-shirt."


//var name = "fjfj"
//defer{
//    print(name)
//}
//print("lol")

//var score = 1
//if score < 10 {
//    defer {
//        print(score)
//    }
//    defer {
//        print("The score is:")
//    }
//    score += 5
//}
//// Prints "The score is:"
//// Prints "6"


//if #available(iOS 10, macOS 11.5, *) {
//    // Use iOS 10 APIs on iOS, and use macOS 10.12 APIs on macOS
//    print("available")
//} else {
//    // Fall back to earlier iOS and macOS APIs
//    print("not available")
//}


//func stepForward(_ input: Int) -> Int {
//    return input + 1
//}
//func stepBackward(_ input: Int) -> Int {
//    return input - 1
//}
//func chooseStepFunction(backward: Bool) -> (Int) -> Int {
//    return backward ? stepBackward : stepForward
//}
//let chosenFunction = chooseStepFunction(backward: true)
//let result = chosenFunction(5)
//print(result) // Prints 4
//


//var arr = [3,25,67,74,3,24,5,76,3]
////var pop = arr.sorted( by: {s1, s2 in s1>s2 })
//var reversedNames = arr.sorted(by: >)
////print(pop)
////var reversedNames = arr.sorted(by: { s1, s2 in return s1 > s2 } )
//print(arr.sorted {$1>$0})
//
//var str = "hello gffg d ed efer gg"
//var names = str.split(separator: " ")
//for name in names {
//    print(name)
//}



//func calculate(operation: (Int,Int) -> Int, num1:Int, num2:Int) -> Int{
//    return operation(num1,num2)
//}
//let add = calculate(operation: { (a,b) in
//    return a+b
//}, num1: 2, num2: 5)


//func makeIncrementer(incrementAmount: Int) -> () -> Int {
//    var total = 0
//
//    let incrementer: () -> Int = {
//        total += incrementAmount
//        return total
//    }
//
//    return incrementer
//}
//
//let incrementByTwo = makeIncrementer(incrementAmount: 2)
//print(incrementByTwo())  // Output: 2
//print(incrementByTwo())  // Output: 4
//print(incrementByTwo())  // Output: 6



//indirect enum Operations{
//    case number (Int)
//    case addition (Operations,Operations)
//    case multiplication (Operations,Operations)
//}
//let five = Operations.number(5)
//let four = Operations.number(4)
//let sum = Operations.addition(five, four)
//let mul = Operations.multiplication(sum, four)
//
//
//func evaluate(_ expression: Operations) -> Int {
//    switch expression {
//    case let .number(value):
//        return value
//    case let .addition(left, right):
//        return evaluate(left) + evaluate(right)
//    case let .multiplication(left, right):
//        return evaluate(left) * evaluate(right)
//    }
//}
//
//
//print(evaluate(mul))
//// Prints "18"


//class Loops{
//    static func wow(){
//        for _ in 0...5000{  }
//        print("All")
//    }
//}
//class Body{
//    var name = "dfdf"
//    lazy var ii = {
//     return   Loops.wow()
//    }()
//}
//var ypyp1 = Body()
//var ypyp = Body()
//print(ypyp.ii)
//ypyp1.intro



//#warning("jfdsjfkjdfs")
//#error("gfrer")



//@propertyWrapper
//struct TwelveOrLess{
//    private var number = 0
//    var wrappedValue:Int{
//        get{return number}
//        set{number = min(newValue, 12)}
//    }
//}
//
//struct SmallRectangle{
//    @TwelveOrLess var height:Int
//    @TwelveOrLess var width:Int
//}
//
//var rec = SmallRectangle()
//print(rec.height)
//rec.width = 32
//print(rec.width)


//@propertyWrapper
//struct SmallNumber {
//    private var number: Int
//    private(set) var projectedValue: Bool
//
//
//    var wrappedValue: Int {
//        get { return number }
//        set {
//            if newValue > 12 {
//                number = 12
//                projectedValue = true
//            } else {
//                number = newValue
//                projectedValue = false
//            }
//        }
//    }
//
//
//    init() {
//        self.number = 0
//        self.projectedValue = false
//    }
//}
//struct SomeStructure {
//    @SmallNumber var someNumber: Int
//}
//var someStructure = SomeStructure()
//
//
//someStructure.someNumber = 4
//print(someStructure.$someNumber)
//// Prints "false"
//
//
//someStructure.someNumber = 55
//print(someStructure.$someNumber)
//// Prints "true"



//class Circle {
//    static let pi = 3.14159
//    static var totalCircles = 0
//
//    var radius: Double
//
//    init(radius: Double) {
//        self.radius = radius
//        Circle.totalCircles += 1
//    }
//
//    static func calculateArea(radius: Double) -> Double {
//        return pi * radius * radius
//    }
//}
//
//let circle1 = Circle(radius: 5.0)
//let circle2 = Circle(radius: 10.0)
//
//print(Circle.pi)            // Output: 3.14159
//print(Circle.totalCircles)  // Output: 2
//print(Circle.calculateArea(radius: 2.0))  // Output: 12.56636


//struct Body{
//    var value:Int = 1
//    mutating func push() {
//        value += 11
//    }
//}
//var call = Body()
//call.push()
//print(call.value)



//@discardableResult
//func calculateSquare(_ number: Int) -> Int {
//    return number * number
//}
//
//calculateSquare(5)  // Ignoring the return value intentionally
//
//
//
//class SomeClass {
//    static func someTypeMethod() {
//        // type method implementation goes here
//        print("dcdc")
//    }
//}
//SomeClass.someTypeMethod()



//class Superclass {
//    class func classFunction() {
//        print("Superclass classFunction")
//    }
//
//    static func staticFunction() {
//        print("Superclass staticFunction")
//    }
//}

//class Subclass: Superclass {
//    override class func classFunction() {
//        print("Subclass classFunction")
//    }
//
//    // Cannot override static function
//    // This will be a new function specific to Subclass
//    static func staticFunction1() {
//        print("Subclass staticFunction")
//    }
//}
//
//let superClassInstance: Superclass = Subclass()
//superClassInstance.classFunction()  // Output: "Subclass classFunction"
//superClassInstance.staticFunction1() // Output: "Superclass staticFunction"



//struct TimesTable {
//    let multiplier: Int
//
//    subscript(index: Int) -> Int {
//        return multiplier * index
//    }
//}
//
//let table = TimesTable(multiplier: 3)
//print(table[6])  // Output: 18


//struct TT{
//    let mul:Int
//    subscript(index:Int) -> Int{
//        return mul * index
//    }
//}
//
//let tb =  TT(mul: 33)
//print(tb[5])


//class Dice{
//    var name:String = "odood"
//}
//
//protocol TextRepresentable {
//    var textualDescription: String { get }
//}
//
//extension Dice: TextRepresentable {
//    var textualDescription: String {
//        return "A \(name)-sided dice"
//    }
//}
//
//var dice = Dice()
//print(dice.textualDescription)


//class BOB{
//    var name:String?
//    var age:Int?
//    init(){}
//}
//var bob = BOB()
//print(bob.name)


//class Person {
//    let name: String
//    var friend: Person?
//
//    init(name: String) {
//        self.name = name
//    }
//
//    deinit {
//        print("\(name) is being deallocated.")
//    }
//}
//
//var john: Person?
//var sarah: Person?
//
//john = Person(name: "John")
//sarah = Person(name: "Sarah")
//
//john?.friend = sarah
//sarah?.friend = john
//
//john = nil
//sarah = nil
//
////john?.friend = nil
////sarah?.friend = nil
////john = nil
////sarah = nil


//class Person {
//    let name: String
//    init(name: String) { self.name = name }
//    var apartment: Apartment?
//    deinit { print("\(name) is being deinitialized") }
//}
//
//
//class Apartment {
//    let unit: String
//    init(unit: String) { self.unit = unit }
//    weak var tenant: Person?
//    deinit { print("Apartment \(unit) is being deinitialized") }
//}
//
//var person:Person? = Person(name: "Person")
//var apartment:Apartment? = Apartment(unit: "Apartment")
//apartment!.tenant = person
//person!.apartment = apartment
//person = nil
//apartment = nil



//class Department {
//    var name: String
//    var courses: [Course]
//    init(name: String) {
//        self.name = name
//        self.courses = []
//    }
//    deinit{
//        print("Department deinitializers")
//    }
//}
//
//
//class Course {
//    var name: String
//    unowned var department: Department
//    unowned var nextCourse: Course?
//    init(name: String, in department: Department) {
//        self.name = name
//        self.department = department
//        self.nextCourse = nil
//    }
//    deinit{
//        print("Courses deinitializers")
//    }
//}
//var dept:Department? = Department(name: "jhaks")
//var cource1:Course? = Course(name: "j", in: dept!)
//var cource2:Course? = Course(name: "grbsf", in: dept!)
//var cource3:Course? = Course(name: "gfesf", in: dept!)
//dept?.courses = [cource1!,cource2!,cource3!]
//dept = nil
////cource1 = nil




//func add<T:AdditiveArithmetic>(a:T, b:T) -> T{
//    return a+b
//}
//
//print(add(a: 4, b: 3))




//Array
var arr: [String] = []
arr[0] = "Six eggs"
arr[4...6] = ["aa", "bb"]

print(arr)
