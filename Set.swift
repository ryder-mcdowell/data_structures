//Ryder McDowell
//Homework 6: Algorithm Engineering Part A
//Set

class Set {

    var items: [String]
    
    init () {
        self.items = []
    }

    func add(value: String) {
        if items.contains(value) {
            print ("The set already contains this value")
        } else {
            items.append(value)
        }
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

var animals = Set()

//Test
assert(animals.count() == 0, "Set was not made empty")

animals.add(value: "🦃")
animals.add(value: "🦃")
assert(animals.count() == 1, "Set did not deny duplicates")
assert(animals.contains("🦃"), "Set did not add correct value")

animals.remove(value: "🐰")
assert(animals.count() == 1, "Set removed a value not in the Set")
assert(animals.contains("🦃"), "Set does not contain unremoved items")

animals.remove(value: "🦃")
assert(animals.count() == 0, "Set did not remove value")

animals.list()