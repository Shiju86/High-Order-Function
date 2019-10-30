import UIKit

///:- Higher Order Function

//1. Map --> Perform same operation to all collection items

let itemHolder = [1, 2, 3]

let updatedItem = itemHolder.map{ $0 * 2}
print("Map: \(updatedItem)")

// 2. Filter --> To perform some condition to all the collection and if condtion satisfy then only it retrun items

let itemsToFilter = [1, 2, 3, 4, 5, 6]

let filteredItem = itemsToFilter.filter{ $0 % 2 == 0}

print("Filter: \(filteredItem)")

// 3. Compactmap --> Introduced in Swift 5 to remove nil values in collection
//Flatmap is depricicated
let checkForNilItems = [1, nil, 2, 3, nil]

let removeNilItems = checkForNilItems.compactMap{ $0 }
print("Compactmap: \(removeNilItems)")

// 4. reduce --> to combine all values of a collection in a single value

print("Reduce: \(itemHolder.reduce(0){ $0 + $1 })")
