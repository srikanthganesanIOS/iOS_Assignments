import UIKit

/* Homework Assignment 3: Functions
 
 Create timeAdder function to
 add 2 time inputs

 Note: Could have optimized it even better with few more functions
 for specific tasks but left it here at this time
*/

/* Function 2 : Overloaded timeAdder function which takes the correct input, adds 2 provided times (in any possible combination and returns output total time as tuple
 */
func timeAdder(time1: Int,label1: String,time2: Int,label2: String)-> (Int,String){
    
    //Return value of this function - tuple with total added time
    var totalTime : (Int,String) = (0,"")
    
    /*Time addition when both times are of same type
     Eg: (1,"minute",5,"minutes)
    */
    if(label1.first == label2.first){
        totalTime.0 = time1 + time2

            switch label1 {
            case "second","seconds" :
                if(totalTime.0 % 60 == 0){
                    totalTime.0 /= 60
                    totalTime.1 = totalTime.0>1 ? "minutes":"minute"
                }else{
                totalTime.1 = "seconds"
                }
            case "minute","minutes" :
                if(totalTime.0 % 60 == 0 ){
                    totalTime.0 /= 60
                    totalTime.1 = totalTime.0>1 ? "hours":"hour"
                }else{
                totalTime.1 = "minutes"
                }
            case "hour","hours"     :
                if(totalTime.0 % 24 == 0){
                    totalTime.0 /= 24
                    totalTime.1 = totalTime.0>1 ? "days":"day"
                }else{
                totalTime.1 = "hours"
                }
            case "day","days"       :
                totalTime.1 = "days"
            default:
                totalTime.1 = ""
            }
        
    }else{
        //Time addition when both times are of different type
         
        //Example: (1,"second",5,"minutes")
        if(label1.first == "s" && label2.first == "m"){
            totalTime.0 = time1 + (time2*60)
            if (totalTime.0 % 60 == 0){
                totalTime.0 /= 60
                totalTime.1 = "minutes"
            }else{
                totalTime.1 = "seconds"
            }
        
        //Example: (5,"seconds",5,"hours")
        } else if(label1.first == "s" && label2.first == "h"){
            totalTime.0 = time1 + (time2*3600)
            if (totalTime.0 % 3600 == 0){
                totalTime.0 /= 3600
                totalTime.1 = "hours"
            }else{
                totalTime.1 = "seconds"
            }
            
        //Example: (10,"seconds",2,"days")
        } else if(label1.first == "s" && label2.first == "d"){
            totalTime.0 = time1 + (time2*86400)
            if (totalTime.0 % 86400 == 0){
                totalTime.0 /= 86400
                totalTime.1 = "days"
            }else{
                totalTime.1 = "seconds"
            }
            
        //Example: (1,"minute",50,"seconds")
        }else if(label1.first == "m" && label2.first == "s"){
            totalTime.0 = (time1*60) + time2
            if(totalTime.0 % 60 == 0){
                totalTime.0 /= 60
                totalTime.1 = "minutes"
            }else{
                totalTime.1 = "seconds"
            }
            
        //Example: (10,"minutes",1,"hour")
        }else if(label1.first == "m" && label2.first == "h"){
            totalTime.0 = time1 + (time2*60)
            if(totalTime.0 % 60 == 0){
                totalTime.0 /= 60
                totalTime.1 = "hours"
            }else{
                totalTime.1 = "minutes"
            }
        
        //Example: (10,"minutes",1,"day")
        }else if(label1.first == "m" && label2.first == "d"){
            totalTime.0 = time1 + (time2*24*60)
            if(totalTime.0 % 1440 == 0){
                totalTime.0 /= 1440
                totalTime.1 = "days"
            }else{
                totalTime.1 = "minutes"
            }
            
        //Example: (10,"hours",10,"seconds")
        } else if(label1.first == "h" && label2.first == "s"){
            totalTime.0 = (time1*3600) + time2
            if(totalTime.0 % 3600 == 0){
                totalTime.0 /= 3600
                totalTime.1 = "hours"
            }else{
                totalTime.1 = "seconds"
            }
            
        //Example: (10,"hours",1,"minute")
        }else if(label1.first == "h" && label2.first == "m"){
            totalTime.0 = (time1*60) + time2
            if(totalTime.0 % 60 == 0){
                totalTime.0 /= 60
                totalTime.1 = "minutes"
            }else{
                totalTime.1 = "minutes"
            }
            
        //Example: (10,"hours",1,"day")
        } else if(label1.first == "h" && label2.first == "d"){
            totalTime.0 = time1 + (time2*24)
            if(totalTime.0 % 24 == 0){
                totalTime.0 /= 24
                totalTime.1 = "days"
            }else{
                totalTime.1 = "hours"
                
            }
            
        //Example: (1,"day",1,"second")
        } else if (label1.first == "d" && label2.first == "s"){
            totalTime.0 = (time1*86400) + time2
            if(totalTime.0 % 86400 == 0){
                totalTime.0 /= 86400
                totalTime.1 = "days"
            }else{
                totalTime.1 = "seconds"
            }
            
        //Example: (1,"day",1,"second")
        }else if(label1.first == "d" && label2.first == "m"){
            totalTime.0 = (time1*1440) + time2
            if(totalTime.0 % 1440 == 0){
                totalTime.0 /= 1440
                totalTime.1 = "days"
            }else{
                totalTime.1 = "minutes"
            }
            
        //Example: (1,"day",1,"hour")
        }else if(label1.first == "d" && label2.first == "h"){
            totalTime.0 = (time1*24) + time2
            if(totalTime.0 % 24 == 0){
                totalTime.0 /= 24
                totalTime.1 = "days"
            }else{
                totalTime.1 = "hours"
            }
        }
    }
        
        return totalTime // returning tuple value of total added time
}
    
/* Function 1: timeAdder function  (below) to check impossible and invalid inputs and call the timeAdder function (above with same name but different parameters and return type) when the inputs are correct and returns false otherwise
 
*/
func timeAdder(_ time1: Any, _ label1: Any,_ time2: Any,_ label2: Any)-> Bool{
    
    var checkFlag : Bool = false
    
    //Check data type of inputs is valid
    if(time1 is Int && label1 is String && time2 is Int && label2 is String){
        
        checkFlag = true
        
    }else{
        checkFlag = false
        return checkFlag
    }
    
    //Convert Any type to Required data type
    let t1 : Int = time1 as! Int
    let l1 : String = label1 as! String
    let t2 : Int = time2 as! Int
    let l2 : String = label2 as! String
    
    //Check input time is a positive integer
    if (t1 < 1 || t2 < 1) {
        checkFlag = false
        return checkFlag
    }
    
    //Check time input 1 is valid time type
    switch l1 {
            
        case  "second","seconds","minute","minutes","hour","hours","day","days":
            checkFlag = true
        
        default:
            checkFlag = false
            return checkFlag
    }
        
    //Check time input 2 is valid time type
    switch l2 {
        
        case "second","seconds","minute","minutes","hour","hours","day",
             "days":
            checkFlag = true
        default:
            checkFlag = false
            return checkFlag
    }
        
    //Check for invalid input
    //Example (1,"seconds",5,"seconds")
    if((t1==1 && l1.last=="s")||(t2==1 && l2.last=="s")){
            
            checkFlag = false
    //Example (1,"seconds",5,"second")
    }else if((t1 != 1 && l1.last != "s")||(t2 != 1 && l2.last != "s")){
             
            checkFlag = false
            return checkFlag
            
    }else{
            checkFlag = true
        //Calling function 2 and return value stored in tuple
        let totalTime : (Int,String) = timeAdder(time1:t1, label1:l1, time2:t2, label2:l2)
        print(totalTime) //Printing total Time
    }
        
        return checkFlag //return Bool
}


timeAdder(3600,"seconds", 2, "hours") // User call to function 1 timeAdder

