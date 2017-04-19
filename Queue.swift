//Ryder McDowell
//Homework 6: Algorithm Engineering Part A
//Queue

class Queue {

    var items: [String]
    
    init () {
        self.items = []
    }

    func enqueue(value: String) {
        items.append(value)
    }
    
    func dequeue() {
        if animals.count() >= 1 {
            items.remove(at: 0)
        } else {
            print ("There are no values to remove")
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
        return items.contains(value)
    }
    
}

var animals = Queue()

//Test
assert(animals.count() == 0, "Queue was not made empty")

animals.enqueue(value: "🐡")
animals.enqueue(value: "🦃")
animals.enqueue(value: "🐀")

assert(animals.count() == 3, "Queue did not add values")
assert(animals.contains(value: "🐡"), "Queue did not add correct value")
assert(animals.contains(value: "🦃"), "Queue did not add correct value")
assert(animals.contains(value: "🐀"), "Queue did not add correct value")

animals.dequeue()
assert(animals.count() == 2, "Queue did not remove value")
assert(!animals.contains("🐡"), "Queue did not remove first value in")

animals.list()