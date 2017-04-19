//Ryder McDowell
//Homework 6: Algorithm Engineering Part A
//Bag

class Bag {

    var items: [String]
    
    init () {
        self.items = []
    }

    func add(value: String) {
        items.append(value)
    }
    
    func remove(value: String) {
        if let i = items.index(of: value) {
            items.remove(at: i)
        }
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

var animals = Bag()

//Test
assert(animals.count() == 0, "Bag was not made empty")

animals.add(value: "🦃")
assert(animals.contains(value: "🦃"), "Bag did not add correct value")

animals.add(value: "🦃")
animals.add(value: "🦃")

assert(animals.count() == 3, "Bag did not store duplicate values")

animals.remove(value: "🐰")
assert(animals.count() == 3, "Bag removed a value not in the bag")
assert(animals.contains("🦃"), "Bag does not contain unremoved items")

animals.remove(value: "🦃")
assert(animals.count() == 2, "Bag did not remove value")

animals.list()