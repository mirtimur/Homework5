import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var array = [(1, "x"), (4, "y"), (6, "a"), (9, "u"), (5, "k")]
        
        //MARK: - Factorial calculation
        var intArray = [1,2,3,4,5,6]
        print(getFactorial(array: intArray))
        
        //MARK: - Squared tuple array
        let squared = array.map { pow(Decimal($0.0),2) }
        print(squared)
        
        //MARK: - Even number filtering
        let filtering = array.filter { $0.0 % 2 == 0 }.map { $0.0 }
        print(filtering)
        
        //MARK: - Filtering strings by alphabetical order
        let stringsFiltering = array.map { $0.1 }.sorted()
        print(stringsFiltering)
        
    }
    
    func factorial(_ x: Int) -> Int {
        if x <= 1 {
            return 1
        }
        return x * factorial(x-1)
    }
    
    func getFactorial(array:[Int]) -> Array<Int> {
        return array.map { number in
            return Int(factorial(number))
 }
    }
    
}
