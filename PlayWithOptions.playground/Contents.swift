import UIKit

/* Can store nil value only in optional variable */
var name0:String = "Axe"
// var name1:String = nil (not allowed)
var length : Int = name0.count
var name1 : String? = nil
var name2 : String? = "Hammer"

/*operation on optional var needs ?. else will work only if there is value*/

var length1 = name1?.count // compiler determines length1 as optional
var length2 = name2?.count // compiler determines length1 as optional
// var length3 = name1.count will throw error as value is nil
var length4 = name2?.count //will work as long as there is value

/*optional var operation needs to be stored in optional variable*/
var length5: Int? = name1?.count
var length6: Int? = name2?.count

//var length7a : Int = name2.count
var length7b: Int = name1.count //will throw compiler error
//var length7c: Int = (name1?.count)! will throw execution error as value is nil
var length8: Int = (name2?.count)! //will throw





