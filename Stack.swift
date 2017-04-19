//Ryder McDowell
//Homework 6: Algorithm Engineering Part A
//Stack

class Stack {

    var items: [String]
    
    init () {
        self.items = []
    }

    func push(value: String) {
        items.append(value)
    }
    
    func pop() -> String {
        return items.removeLast()
    }
    
    func list() {
        for item in items {
            print(item)
        }
    }
    
    func count() -> Int {
        return items.count
    }
      
    func contains(value: String) -> Bool {
        if items.contains(value) {
           return true
       } else {
           return false
       }
    }
    
}

var animals = Stack()

//Test
assert(animals.count() == 0, "Stack was not made empty")

animals.push(value: "🦃")
animals.push(value: "🐀")

assert(animals.count() == 2, "Stack did not add values")
assert(animals.contains("🦃"), "Stack did not add correct value")
assert(animals.contains("🐀"), "Stack did not add correct value")

animals.pop()
assert(animals.count() == 1, "Stack did not remove value")
assert(!animals.contains("🐀"), "Stack did not remove last value in")

animals.list()