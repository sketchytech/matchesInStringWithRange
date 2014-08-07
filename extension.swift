extension NSRegularExpression {
    
    func matchesInStringWithRange(str:String!,options: NSMatchingOptions,error:NSErrorPointer, range:Range<String.Index>)-> [AnyObject]! {
        
        // Calculate start and end ranges
        var num = 0
        var firstIndex:Int?
        var strLength = 0
        for i in range {
            
            if firstIndex == nil {
                firstIndex=num
            }
            else {
                strLength = num + 1
            }
            num++
            
        }
        strLength
        firstIndex!
        // use the NSRegularExpression method matchesInString
        let rvalue = self.matchesInString(str, options: options, range: NSRange(location: firstIndex!, length: strLength))
     return rvalue
    }
}
