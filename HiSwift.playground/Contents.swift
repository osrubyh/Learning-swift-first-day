//: Playground - noun: a place where people can play

import UIKit

//** 简单值*/
var str = "Hello, playground"
print(str)

var hscn=42
hscn=50
let myConstant=55

let exDouble: Double = 70
let exFloat: integer_t = 50


let label="Hello World!"
let width = 94
let widthLable=label + String(width)
let widLable = label + String(width)
let widll = width + integer_t(exDouble)

//把值转换成字符串的方法
let apples = 3
let oranges = 5
let appleSummary = "i have \(oranges) apples"
let fruitSummary = "i have \(apples + oranges) pieces of fruit."

//使用\()来把一个浮点计算转成
let ostea = "ChengChao"
let string = "hello"
let sayHelloToOstea = string + ostea
let sayHelloToOsteaForCount = "i sayHelloToOsteaForCount is \(apples + oranges)"

//使用方括号[]来创建数组和字典，并使用下标或者键（key）来访问元素。最后一个元素后面允许有个逗号
var shoppingList = ["catfish","water","tulips","blue paint"]
shoppingList[1] = "bottle of water"
print(shoppingList) //此处值已经改变
var occupations = [
    "Malcom" : "Captain",
    "Katlee" : "Mechanic",
]
occupations["Jayne"] = "Public Relations"

//要创建一个空数组或者字典，使用初始化语法 
let emptyArray = [String]()
let emptyDictionary = [String:Float]()

//如果类型信息可以被推断出来，你可以用[]和[:]来创建空数组和空字典--就像你声明变量或者给函数传参数的时候一样
shoppingList = []
occupations = [:]

//** 控制流*/

//使用if和switch来进行条件操作，使用for-in ,for ,while和repeat-while来进行循环，包裹条件和循环变量括号可以省略，dan
let individualScore = [75,43,103,87,12]

var teamScore = 0
for score in individualScore{
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

//在if语句中，条件必须是一个布尔表达式--这意味着像if score{...}这样的代码将报错，而不会隐形的与0作对比。你可以一起使用if和let来处理缺失的情况。这些值可由可选值来代表 。一个可选的值是一个具体的值或者是nil以表示值缺失。在类型后面加一个问号来标记这个变量的值是可选的

var optionalString: String? = "hello"

print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello,\(name)"
}

optionalName = nil
if let name = optionalName {
    greeting = "Hello,\(name)"
}else{
    greeting = "Hello,\(optionalName)"
}

let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"

//switch 支持任意类型的数据以及各种比较操作--不仅仅是整数以及测试相等。
let vegetable = "celery"
switch vegetable {
    case "celery":
        print("Add some raisins and make ants on a log")
    case "cucumber","watercress":
        print("That would make a good tea sandwich.")
    case let x where x.hasSuffix("pepper"):
        print("Is it a spicy \(x)?")
    default:
        print("Everything tastes good in soup.")
}

//你可以使用for-in来遍历字典，需要两个变量来表示每个键值对。字典是一个无序的集合，所以他们的键和值以任意顺序迭代结束。

let interestingNumbers = [
    "Prime" : [2,3,5,7,11,13],
    "Fibonacci" : [1,1,2,3,5,8],
    "Square" : [1, 4, 9, 16, 25],
]

var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}

print(largest)


let dicArray = [
    "Prime" : [2,3,5,7,11,13],
    "Fibonacci" : [1,1,2,3,5,8]
]

var min = 100
for (kind,nums) in dicArray {
    for num in nums {
        if min > num {
            min = num
        }
    }
}
print(min)

//使用while来重复运行一段代码直到不满足条件。循环条件也可以在结尾，保证能至少循环一次。
var n = 2
while n < 100 {
    n = n * 2
}
print(n)

var m = 2
repeat{
    m = m * 2
} while m < 100

print(m)

//你可以在循环中使用..<来表示范围，也可以使用传统的写法，两者是等价的：
var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += i
}
print(firstForLoop)

var secondForLoop = 0
for i in 0...4 {
    secondForLoop += i
}
print(secondForLoop)

//** 函数与闭包*/
func greet(name:String, day:String) ->String {
    return "Hello \(name), today is \(day)."
}
greet("rubyh", day: "Thesday")

//使用元组来让一个函数返回多个值。该元组的元素可以用名称或数字来表示
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}

let statistics = calculateStatistics([5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)

//函数可以带有可变个数的参数，这些参数在函数内表现为数组的形式：
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(5, 3, 100, 3, 9)

//练习： 写一个计算参数平均值的函数。
func calculateAverage(numbers: Int...) ->Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum/numbers.count
}
calculateAverage(5, 3, 100, 3, 9)

//函数可以嵌套。被嵌套的函数可以访问外侧函数的变量，你可以使用嵌套函数来重构一个太长或者太复杂的函数。
func returnFifteen() ->Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()


//函数是第一等类型，这意味着函数可以作为另一个函数的返回值
func makeIncrementer(i: Int) -> (String ->String) {
    func addOne(numberStr: String) -> String {
        return "1 + \(numberStr) + \(i)"
    }
    return addOne
}
var increment = makeIncrementer(9)
increment("7")

//函数也可以当做参数传入另一个函数
func hasAnyMatches(list: [Int], condition: Int ->Bool) ->Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) ->Bool {
    return number < 10
}

var numbers = [12, 9, 18, 3]
hasAnyMatches(numbers, condition: lessThanTen)

//函数实际上是一种特殊的闭包:它是一段能之后被调取的代码。闭包中的代码能访问闭包所建作用域中能得到的变量和函数，即使闭包是在一个不同的作用域被执行的 - 你已经在嵌套函数例子中所看到。你可以使用{}来创建一个匿名闭包。使用in将参数和返回值类型声明与闭包函数体进行分离。
numbers.map({
    (number: Int) -> Int in
    let result = 3  * number
    return result
})

//有很多种创建更简洁的闭包的方法。如果一个闭包的类型已知，比如作为一个回调函数，你可以忽略参数的类型和返回值。单个语句闭包会把它语句的值当做结果返回。
let mappedNumbers = numbers.map({number in 3 * number})
print(mappedNumbers)

//你可以通过参数位置而不是参数名字来引用参数——这个方法在非常短的闭包中非常有用。当一个闭包作为最后一个参数传给一个函数的时候，它可以直接跟在括号后面。当一个闭包是传给函数的唯一参数，你可以完全忽略括号。
let sortedNumbers = numbers.sort {$0 > $1}
print(sortedNumbers)

/** 对象和类*/
//使用class和类名来创建一个类。类中属性的声明和常量、变量声明一样，唯一的区别就是它们的上下文是类。同样，方法和函数声明也一样。
class Shape {
    var numberOfSides = 0
    func simpleDescription() ->String {
        return "A shape with \(numberOfSides) sides."
    }
}

//要创建一个类的实例，在类名后面加上括号。使用点语法来访问实例的属性和方法
var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape
shapeDescription.simpleDescription()
//这个版本的Shape类缺少了一些重要的东西：一个构造函数来初始化类实例。使用init来创建一个构造器。
//注意self被用来区别实例变量。当你创建实例的时候，像传入函数参数一样给类传入构造器的参数。每个属性都需要赋值——无论是通过声明（就像numberOfSides）还是通过构造器（就像name）。
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() ->String {
        return "A shape with \(numberOfSides) sides."
    }
}

//子类的定义方法是在它们的类名后面加上父类的名字，用冒号分割。创建类的时候并不需要一个标准的根类，所以你可以忽略父类.子类如果要重写父类的方法的话，需要用override标记——如果没有添加override就重写父类方法的话编译器会报错。编译器同样会检测override标记的方法是否确实在父类中。
class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()

//练习
class Circle: NamedShape {
    var radius: Double
    
    init(name: String, radius: Double) {
        self.radius = radius
        super.init(name: name)
    }
    
    func area() -> Double {
        return 3.14 * radius * radius
    }
    
    override func simpleDescription() -> String {
        return "A circle with sides of length \(radius)."
    }
}
let result = Circle.init(name: "rubyh", radius: 3)
result.area()
result.simpleDescription()


//除了储存简单的属性之外，属性可以有 getter 和 setter 。

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue/3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triagle with sides of length\(sideLength)."
    }
}

var triangle = EquilateralTriangle(sideLength: 3, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)

/*在perimeter的 setter 中，新值的名字是newValue。你可以在set之后显式的设置一个名字。
注意EquilateralTriangle类的构造器执行了三步：
1.设置子类声明的属性值
2.调用父类的构造器
3.改变父类定义的属性值。其他的工作比如调用方法，getters和setters也可以在这个阶段完后。

如果你不需要计算属性，但是仍然需要在设置一个新值之前或者之后运行代码，使用willSet和didSet。
比如，下面的类确保三角形的边长总是和正方形的边长相同。*/
class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}

var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test ")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)

/*处理变量的可选值时，你可以在操作（比如方法，属性和子脚本）之前加？。如果？之前的值是nil，？后面的东西都会被忽略，并且整个表达式返回nil。否则，？之后的东西都会被执行，在这两种情况下，整个表达式的值也是一个可选值。*/
let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength

//枚举和结构体
//使用enum来创建一个枚举，就像类和其他所有命名类型一样，枚举可以包含方法。
enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.Jack
let aceRawValue = ace.rawValue
/*在上面的例子中，枚举的原始值是Int， 所以你只需要设置第一个原始值。剩下的原始值会按照顺序赋值。你也可以使用字符串或者浮点数作为枚举的原始值。使用rawValue属性来访问一个枚举成员的原始值*/
//使用init？(rawValue:) 初始构造器在原始值和枚举值之间进行转换

if let convertedRank = Rank(rawValue: 5) {
    let threeDescription = convertedRank.simpleDescription()
}

//枚举的成员值是实际值，并不是原始值的另一种表达方法。实际上，以防原始值没有意义，你不需要设置
enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamond"
        case .Clubs:
            return "clubs"
        }
    }
    func color() -> String {
        switch self {
        case .Spades:
            return "black"
        case .Hearts:
            return "red"
        case .Diamonds:
            return "red"
        case .Clubs:
            return "black"
        }
    }
}
let hearts = Suit.Hearts
let heartsDescription = Suit.Diamonds.simpleDescription()
let currentColor = Suit.Diamonds.color()

//注意，有两种方式可以引用Hearts成员:给hearts常量赋值时，枚举成员Suit.Hearts需要用全名来引用，因为常量没有显示指定类型。在switch里，枚举成员使用缩写.Hearts来引用，因为self的值已经知道是一个suit。已知变量类型的情况下你可以使用缩写。

//使用struct来创建一个结构体，结构体和类有很多相同的地方，比如方法和构造器。他们之间最大的一个区别就是结构体是传值，类是传引用


struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

//一个枚举成员的实例可以有实例值。相同枚举成员的实例可以有不同的值。创建实例的时候传入值即可。实例值和原始值是不同的：枚举成员的原始值对于所有实例都是相同的，而且你是定义枚举的时候设置原始值。
//例如，考虑从服务器取日出和日落的时间。服务器会返回正常结果或者错误信息。

enum SeverResponse {
    case Result(String, String)
    case Error(String)
}

let success = SeverResponse.Result("6.00 am", "8:09 pm")
let failure = SeverResponse.Error("Out of chesse.")

switch failure {
case let .Result(sunrise, sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
case let .Error(error):
    let serverResponse = "Failure... \(error)"
    
}

//协议与扩展
//使用protocol来声明一个协议。

protocol ExampleProtocol {
    var simpleDescription: String{
        get
    }
    mutating func adjust()
}

//类和枚举和结构体都可以实现协议
class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "Now 100% adjusted."
    }
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure:ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

//注意声明SimpleStructure时候mutating关键字用来标记一个会修改结构体的方法。SimpleClass的声明不需要标记任何方法，因为类中的方法通常可以修改类属性（类的性质）。
//使用extension来为现有的类型添加功能，比如新的方法和计算属性。你可以使用扩展在别处修改定义，甚至是从外部库或者框架引入的一个类型，使得这个类型遵循某个协议。
extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}

print(7.simpleDescription)

//你可以像使用其他命名类型一样使用协议名--例如，创建一个有不同类型但是都实现一个协议的对象集合。当你处理类型是协议的值时，协议外定义的方法不可用。
let protocolValue: ExampleProtocol = a
print(protocolValue.simpleDescription)

//泛型
//在尖括号里写一个名字来创建一个泛型函数或者类型。
func repeatItem<D>(d: D, numberOfTimes: Int) -> [D] {
    var result = [D]()
    for _ in 0..<numberOfTimes {
        result.append(d)
    }
    return result
}
repeatItem("knock", numberOfTimes:4)

//你也可以创建泛型函数，方法，类，枚举和结构体。
enum OptionValue<Wrapped> {
    case None
    case Some(Wrapped)
}
var possibleInteger: OptionValue<String> = OptionValue.None
possibleInteger = .Some("asd")

//在类型后面使用where来制定对类型的需求，比如，限定类型实现某一个协议，限定两个类型是相同的，或者限定某个类必须有一个特定的父类。
func anyCommonElements <T: SequenceType, U: SequenceType where T.Generator.Element: Equatable, T.Generator.Element == U.Generator.Element> (lhs: T, _ rhs: U) -> Bool {
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}
anyCommonElements([1], [3])

















