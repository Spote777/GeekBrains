struct Queue<T> {
    
    var list = LinkedList<T>()
    
    var isEmpty: Bool {
        return list.isEmpty
    }
    
    mutating func enqueue(_ element: T) {
        list.append(element)
    }
    
    mutating func dequeue() -> T? {
        guard !list.isEmpty, let element = list.first else { return nil }
        
        list.remove(element)
        
        return element.value
    }
    
    func peek() -> T? {
        return list.first?.value
    }
}

extension Queue: CustomStringConvertible {
    var description: String {
        return list.description
    }
}

var queue = Queue<Int>()
queue.enqueue(10)
queue.enqueue(3)
queue.enqueue(57)
queue.dequeue()

print(queue)
