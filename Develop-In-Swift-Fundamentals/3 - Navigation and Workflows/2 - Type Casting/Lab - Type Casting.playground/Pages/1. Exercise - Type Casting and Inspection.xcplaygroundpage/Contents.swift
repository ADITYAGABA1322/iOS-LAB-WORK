/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var items : [Any] = [20.2,68,"Aarushi",true]
print(items)

//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for item in items{
    if item is Int{
        print("The integer has a value of \(item)")
    }
    if item is Double{
        print("The Double has a value of \(item)")
    }
    if item is String{
        print("The String has a value of \(item)")
    }
    if item is Bool{
        print("The Boolean has a value of \(item)")
    }
}

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var mixedItems : [String : Any] = ["first" : 2.22,"second":true,"third":"5"]
print(mixedItems)

//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total : Double = 0;
for (key,item) in mixedItems{
    
    if item is Int{
        var val = item as! Double;
        total += val;
    }
    if item is Double{
        total += item as! Double;
    }
    if item is String{
        total += 1;
    }
    if item is Bool{
        if (item as! Bool) {
            total += 2;
        }
        else{
            total -= 3;
        }
    }
}

print(total)
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2 : Double = 0;
for (key,item) in mixedItems{
    
    if item is Int{
        var val = item as! Double;
        total2 += val;
    }
    if item is Double{
        total2 += item as! Double;
    }
    if item is String{
        total2 += Double(item as! String)!;
    }
}

print("Total_2 \(total2)");

/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
